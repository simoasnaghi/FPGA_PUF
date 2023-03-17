`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: demapper_ECC
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module demapper_ECC #(parameter RESPONSE_BITS = 8, ROW_NUMBER = 2,
     ITERATION = 8, INDEX_BITS = 8) (

     input clk,
     input reset,
     input [RESPONSE_BITS-1:0] response_in,
     input [INDEX_BITS-1:0] index_in,
     input valid_in,
     input prox_in,

     output reg start_out,
     output reg b_out,
     output reg valid_out,
     output reg prox_out

    );

/*  il demapper raccoglie tot risposte della puf per ogni row,
     riceve gli indici dell'enmapper, controlla la posizione, ricava B'
*/

    reg [1:0] current_state, next_state;
    localparam  IDLE_STATE = 2'b00,
                STORAGE_STATE = 2'b01,
                COMPUTING_STATE = 2'b10,
                OUT_STATE = 2'b11;

    reg [INDEX_BITS-1:0] i, count, pos, count_clk;
    reg [ITERATION*RESPONSE_BITS-1:0] row_vector [ROW_NUMBER-1:0];
    reg [ROW_NUMBER-1:0] b_internal, error_internal;
    reg [INDEX_BITS-1:0] index_internal [ROW_NUMBER-1:0];
    reg [RESPONSE_BITS-1:0] compare_value;
    reg [ITERATION*RESPONSE_BITS-1:0] stack;
    reg max, min, done;

//  utilizzato nel caso si riscontrasse che l'esito della PUF ci impiega piu'
//  di un colpo di clk a presentarsi
    //localparam  CLK_PER_RESPONSE = 2;

    always @ ( posedge clk ) begin
        if (reset) begin
            current_state <= IDLE_STATE;
            i <= 0;
            count <= 0;
            pos <= 0;
            max <= 1;
            min <= 1;
            done <= 0;
            stack <= 0;
            //count_clk <= 0;
        end else begin
            current_state <= next_state;
            /*if (count_clk < CLK_PER_RESPONSE) begin
                count_clk <= count_clk+1;
            end else begin
                count_clk <= 0;
            end*/
        end
    end

    always @ ( current_state, response_in, index_in, valid_in, prox_in, count_clk ) begin

        valid_out = 0;
        b_out = 0;
        prox_out = 0;

        next_state = current_state;

        case (current_state)
            IDLE_STATE: begin
/* viene utilizzato come stato di supporto per far dare una nuova risposta alla
    PUF da memorizzare oppure per cambiare l'uscita con done=1
*/
                if (done) begin
                    count = count+1;
                    next_state = OUT_STATE;
                end else begin
                    //if (count_clk >= CLK_PER_RESPONSE) begin
//                      per memorizzare le risposte ->
                        if (i<ITERATION && count<ROW_NUMBER) begin
                           // count_clk = 0;
                            start_out = 1;
//                       per memorizzare gli indici ->
                        end else if (count>=ROW_NUMBER && count<ROW_NUMBER+ROW_NUMBER) begin
                            prox_out = 1;
                        end else if (i==ITERATION && count<ROW_NUMBER) begin
                            i=0;
                            count=count+1;
                            start_out=1;
                        end
                        next_state = STORAGE_STATE;
                        if (count >= ROW_NUMBER+ROW_NUMBER) begin
                            i = 0;
                            count = 0;
                            next_state = COMPUTING_STATE;
                        end
                    end

                //end
            end

            STORAGE_STATE:  begin
                start_out = 0;
                next_state = IDLE_STATE;
                //if (count_clk >= CLK_PER_RESPONSE) begin
                    if (i < ITERATION) begin
                        row_vector[count] = row_vector[count]>>RESPONSE_BITS;
                        row_vector[count][ITERATION*RESPONSE_BITS-1:ITERATION*RESPONSE_BITS-RESPONSE_BITS] = response_in;
                        i = i+1;
                        //count_clk = 0;
                        //next_state = IDLE_STATE;
                    end else /*begin
                        count = count+1;
                        if (count < ROW_NUMBER) begin
                            row_vector[count] = row_vector[count]>>RESPONSE_BITS;
                            row_vector[count][ITERATION*RESPONSE_BITS-1:ITERATION*RESPONSE_BITS-RESPONSE_BITS] = response_in;
                            i = 0;
                            //count_clk = 0;
                            //next_state = IDLE_STATE;
                        end else*/ begin
                            index_internal[count-ROW_NUMBER] = index_in;
                            count=count+1;
                            //next_state = IDLE_STATE;
                        end
                    
                   // end
                //end

            end

            COMPUTING_STATE: begin
                for (count = 0; count < ROW_NUMBER; count=count+1) begin
// per la posizione identificata in ogni row confrontiamo quel valore con tutti
// gli altri in modo da capire se massimo o minimo
                    pos = index_internal[count];
                    stack = row_vector[count];
                    for (i = 0; i < pos; i=i+1) begin
                        stack = stack>>RESPONSE_BITS;
                    end
                    compare_value = stack[RESPONSE_BITS-1:0];
                    max = 1;
                    min = 1;
                    for (i = 0; i < ITERATION; i=i+1) begin
                        if (max && (compare_value < row_vector[count][RESPONSE_BITS-1:0])) begin
                            max = 0;
                        end
                        if (min && (compare_value > row_vector[count][RESPONSE_BITS-1:0])) begin
                            min = 0;
                        end
                        row_vector[count] = row_vector[count]>>RESPONSE_BITS;
                    end
                    if (max) begin
                        b_internal[count] = 1;
                        error_internal[count] = 0;
                    end else if (min) begin
                        b_internal[count] = 0;
                        error_internal[count] = 0;
                    end else begin
                        error_internal[count] = 1;
                        b_internal[count] = 0;
                    end
                end
                count = 0;
                done = 1;
                next_state = OUT_STATE;
            end

            OUT_STATE: begin
//               per ricominciare bisogna resettare l'enmapper
                if (count < ROW_NUMBER) begin
                    b_out = b_internal[count];
                    valid_out = !error_internal[count];
//  sincronizziamo il demapper con il controller tramite richieste sul prossimo
//  valore di B'
                    if (prox_in) begin
                        next_state = IDLE_STATE;
                    end
                end else begin
                    done = 0;
                end
            end

            default: next_state = IDLE_STATE;
        endcase
    end

endmodule
