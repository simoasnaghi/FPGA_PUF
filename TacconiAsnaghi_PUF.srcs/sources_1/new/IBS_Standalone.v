`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: IBS_Standalone
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module IBS_Standalone #(parameter RESPONSE_BITS = 8, ROW_NUMBER = 2,
     ITERATION = 8, INDEX_BITS = 8) (

     input clk,
     input reset,
     input [RESPONSE_BITS-1:0] response_in,

     output reg start_out,
     output control_out,
     output valid_out

    );

    wire prox_from_en, b_from_en, valid_from_en, start_from_en;
    wire prox_from_de, b_from_de, valid_from_de, start_from_de;
    wire [INDEX_BITS-1:0] index_from_en;

    reg reset_de, reset_controller;

    enmapper_ECC #(
        .RESPONSE_BITS(RESPONSE_BITS),
        .ROW_NUMBER(ROW_NUMBER),
        .ITERATION(ITERATION),
        .INDEX_BITS(INDEX_BITS)
    ) enmapper_ECC_inst (
            .clk(clk),
            .reset(reset),
            .prox_in(prox_from_en),
            .response_in(response_in),
            .start_out(start_from_en),
            .index_out(index_from_en),
            .b_out(b_from_en),
            .valid_out(valid_from_en)
        );

        demapper_ECC #(
            .RESPONSE_BITS(RESPONSE_BITS),
            .ROW_NUMBER(ROW_NUMBER),
            .ITERATION(ITERATION),
            .INDEX_BITS(INDEX_BITS)
        ) demapper_ECC_inst (
                .clk(clk),
                .reset(reset_de),
                .response_in(response_in),
                .index_in(index_from_en),
                .valid_in(valid_from_en),
                .prox_in(prox_from_de),
                .start_out(start_from_de),
                .b_out(b_from_de),
                .valid_out(valid_from_de),
                .prox_out(prox_from_en)
         );

         controller_ECC #(
             .RESPONSE_BITS(RESPONSE_BITS),
             .ROW_NUMBER(ROW_NUMBER),
             .INDEX_BITS(INDEX_BITS)
         ) controller_ECC_inst (
             .clk(clk),
             .reset(reset_controller),
             .b_en_in(b_from_en),
             .en_valid_in(valid_from_en),
             .b_de_in(b_from_de),
             .de_valid_in(valid_from_de),
             .control_out(control_out),
             .valid_out(valid_out),
             .en_prox_out(prox_from_en),
             .de_prox_out(prox_from_de)
         );
         
localparam  CLK_PER_RESPONSE = 2;
reg [INDEX_BITS-1:0] count_clk=0;

         always @ ( posedge clk ) begin
             if (reset) begin
                 start_out <= start_from_en;
                 reset_de <= reset;
                 reset_controller <= reset;
             end else begin
                 if (valid_from_en) begin
//  facciamo partire il demapper una volta che ha concluso l'enmapper
                     start_out = start_from_de;
                     if (count_clk < CLK_PER_RESPONSE) begin
                        count_clk = count_clk+1;
                    end else begin
                        reset_de = 0;
                    end
                     
                 end else begin
// teniamo in reset il demapper finche' l'enmapper non ha finito
                     start_out = start_from_en;
                     reset_de = 1;
                 end
                 if (valid_from_de) begin
                     reset_controller = 0;
                 end
             end
         end
endmodule

