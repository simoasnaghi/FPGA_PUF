`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: enmapper_ECC
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module enmapper_ECC #(parameter RESPONSE_BITS = 1, ROW_NUMBER = 1,
     ITERATION = 1, INDEX_BITS = 1) (

     input clk,
     input reset,
     input [RESPONSE_BITS-1:0] response_in,
     input prox_in,

     output reg start_out,
     output reg [INDEX_BITS-1:0] index_out,
     output reg b_out,
     output reg valid_out

    );

    /*  l'enmapper raccoglie tot risposte della puf per ogni row_vector, calcola B,
        calcola l'indice per ogni row_vector e lo dispone all'uscita,
        mette in uscita anche B per controllo
    */

    reg [1:0] current_state, next_state;
    localparam  IDLE_STATE = 2'b00,
                STORAGE_STATE = 2'b01,
                COMPUTING_STATE = 2'b10,
                OUT_STATE = 2'b11;

    reg [INDEX_BITS-1:0] i, count, count_clk;
    reg [ITERATION*RESPONSE_BITS-1:0] row_vector [ROW_NUMBER-1:0];
    reg [ROW_NUMBER-1:0] b_indexing;
    reg [INDEX_BITS-1:0] index_internal [ROW_NUMBER-1:0];
    reg [RESPONSE_BITS-1:0] compare_value;
    reg done;

//  utilizzato nel caso si riscontrasse che l'esito della PUF ci impiega piu'
//  di un colpo di clk a presentarsi
   // localparam  CLK_PER_RESPONSE = 1;

    always @ ( posedge clk ) begin
        if (reset) begin
            current_state <= IDLE_STATE;
            i <= 0;
            count <= 0;
            b_indexing <= 0;
            compare_value <= 0;
            done <= 0;
            //count_clk <= 0;
           // start_out <= 0;
            for (count = 0; count < ROW_NUMBER; count = count+1) begin
                index_internal[count] = 0;
            end
        end else begin
            current_state <= next_state;
            /*if (count_clk < CLK_PER_RESPONSE) begin
                count_clk <= count_clk+1;
            end else begin
                count_clk <= 0;
            end*/

        end
    end

    always @ ( current_state, response_in, prox_in, count_clk ) begin

        valid_out = 0;
        b_out = 0;
        index_out = 0;

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
                        start_out = 1;
                        next_state = STORAGE_STATE;
                    //end
                end
            end

            STORAGE_STATE:  begin
               // if (count_clk >= CLK_PER_RESPONSE) begin
//                  memorizziamo le risposte nelle row
                    if (i < ITERATION) begin
                        row_vector[count] = row_vector[count]>>RESPONSE_BITS;
                        row_vector[count][ITERATION*RESPONSE_BITS-1:ITERATION*RESPONSE_BITS-RESPONSE_BITS] = response_in;
                        i = i+1;
                    end else begin
                        count = count+1;
                        if (count < ROW_NUMBER) begin
                            row_vector[count] = row_vector[count]>>RESPONSE_BITS;
                            row_vector[count][ITERATION*RESPONSE_BITS-1:ITERATION*RESPONSE_BITS-RESPONSE_BITS] = response_in;
                            i = 1;
                        end
                    end
                    next_state = IDLE_STATE;
                    start_out = 0;
//               una volta finita la memorizzazione viene scelto B per ogni row
                    if (i==ITERATION && count==ROW_NUMBER-1) begin
                        for (count = 0; count < ROW_NUMBER; count = count+1) begin
//                    scelgo B a piacere mio, potrebbe essere di piu' bit anche
                            b_indexing[count] = row_vector[count][RESPONSE_BITS+count];
                        end
                        i = 0;
                        next_state = COMPUTING_STATE;
                    //end
                end
            end

            COMPUTING_STATE: begin
                for (count = 0; count < ROW_NUMBER; count = count+1) begin
                    compare_value = row_vector[count][RESPONSE_BITS-1:0];
                    for (i = 0; i < ITERATION; i = i+1) begin
                        if (b_indexing[count]) begin // cerca il massimo
                            if (compare_value < row_vector[count][RESPONSE_BITS-1:0]) begin
                                compare_value = row_vector[count][RESPONSE_BITS-1:0];
                                index_internal[count] = i;
                            end
                        end else begin //   cerca il minimo
                            if (compare_value > row_vector[count][RESPONSE_BITS-1:0]) begin
                                compare_value = row_vector[count][RESPONSE_BITS-1:0];
                                index_internal[count] = i;
                            end
                        end
                        row_vector[count] = row_vector[count]>>RESPONSE_BITS;
                    end
                end
                count = 0;
                done = 1;
                next_state = OUT_STATE;
            end

            OUT_STATE:  begin
//               per ricominciare bisogna resettare l'enmapper
                if (count < ROW_NUMBER) begin
                    b_out = b_indexing[count];
                    index_out = index_internal[count][INDEX_BITS-1:0];
                    valid_out = 1;
//  sincronizziamo l'enmapper con demapper tramite richieste sul prossimo valore
//   di indice
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

