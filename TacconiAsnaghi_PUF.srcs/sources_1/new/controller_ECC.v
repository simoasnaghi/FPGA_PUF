`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: controller_ECC
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module controller_ECC #(parameter RESPONSE_BITS = 2, ROW_NUMBER = 2,
    INDEX_BITS = 2) (

        input clk,
        input reset,
        input b_en_in,
        input en_valid_in,
        input b_de_in,
        input de_valid_in,

        output reg control_out,
        output reg valid_out,
        output reg en_prox_out,
        output reg de_prox_out

    );

/*  il controller riceve in ingresso i bit di B da enmapper e demapper per ogni
    parola da confrontare, se sono uguali per almeno la meta'
    allora la risposta viene ritenuta affidabile
*/

    reg [ROW_NUMBER-1:0] en_b_vector, de_b_vector;
    reg [INDEX_BITS-1:0] i, count,w;

    always @ ( posedge clk ) begin

        en_prox_out = 0;
        de_prox_out = 0;
        valid_out = 0;
        control_out = 0;

        if (reset) begin
            i <= 0;
            count <= 0;
            en_b_vector <= 0;
            de_b_vector <= 0;
        end else begin
//          memorizziamo i valori di B dall'enmapper appena arrivano
            if (en_valid_in && i<ROW_NUMBER) begin
                en_b_vector[i] = b_en_in;
                i = i+1;
                en_prox_out = 1;
            end
//          memorizziamo i valori di B' dal demapper appena arrivano
            if (de_valid_in && count<ROW_NUMBER) begin
                de_b_vector[count] = b_de_in;
                count = count+1;
                de_prox_out = 1;
            end
//          una volta che li abbiamo tutti li confrontiamo
            if (i==ROW_NUMBER && count==ROW_NUMBER) begin
                i = 0;
                for (w = 0; w < ROW_NUMBER; w=w+1) begin
                    if (en_b_vector[w] == de_b_vector[w]) begin
                        i = i+1;
                    end
                end
// per semplicita' assumiamo che almeno la meta' dei B siano corretti per avere
// la risposta della PUF esatta
                if (i > (ROW_NUMBER>>1)) begin
                    control_out = 1;
                    valid_out = 1;
                end
            end
        end

    end

endmodule

