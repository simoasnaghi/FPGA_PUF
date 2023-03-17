`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: tb_demapper_ECC
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_demapper_ECC(

    );

    parameter  RESPONSE_BITS_tb = 8,
               ROW_NUMBER_tb = 2,
               ITERATION_tb = 8,
               INDEX_BITS_tb = 8;

   reg clk_tb, reset_tb, valid_tb, controller_prox_tb;
   reg [RESPONSE_BITS_tb-1:0] response_tb;

   reg [INDEX_BITS_tb-1:0] index_tb;

   wire start_out_tb, b_out_tb, valid_out_tb, prox_tb;

   reg [INDEX_BITS_tb*ROW_NUMBER_tb-1:0] memory_index = {
       8'h02,
       8'h07
   };

   reg [ROW_NUMBER_tb*RESPONSE_BITS_tb*ITERATION_tb-1:0] memory_response = {
       8'd12, 8'd97, 8'd35, 8'd254, 8'd25, 8'd5, 8'd128, 8'd32,
       8'd201, 8'd4, 8'd13, 8'd96, 8'd36, 8'd24, 8'd127, 8'd33
   };

   demapper_ECC #(
       .RESPONSE_BITS(RESPONSE_BITS_tb),
       .ROW_NUMBER(ROW_NUMBER_tb),
       .ITERATION(ITERATION_tb),
       .INDEX_BITS(INDEX_BITS_tb)
   ) demapper_ECC_DUT (
           .clk(clk_tb),
           .reset(reset_tb),
           .response_in(response_tb),
           .index_in(index_tb),
           .valid_in(valid_tb),
           .prox_in(controller_prox_tb),
           .start_out(start_out_tb),
           .b_out(b_out_tb),
           .valid_out(valid_out_tb),
           .prox_out(prox_tb)
    );

    always #5 clk_tb = ~clk_tb;

    initial begin
// inizializzazione
        clk_tb <= 0;
        reset_tb = 1;
        response_tb = 0;
        index_tb = 0;
        valid_tb = 0;
        controller_prox_tb = 0;

// finito peiodo di reset
        repeat(20) @(posedge clk_tb);
        response_tb = memory_response[RESPONSE_BITS_tb-1:0];
        reset_tb = 0;

// inizio ciclo di risposte
        repeat(ITERATION_tb*ROW_NUMBER_tb-1) begin
            @(posedge start_out_tb);
            response_tb = memory_response[RESPONSE_BITS_tb-1:0];
            memory_response = memory_response>>RESPONSE_BITS_tb;
        end

// ciclo di indici
        index_tb = memory_index[INDEX_BITS_tb-1:0];

        repeat(ROW_NUMBER_tb) begin
            @(posedge clk_tb);
            valid_tb = 1;
            @(posedge prox_tb);
            valid_tb = 0;
            memory_index = memory_index>>INDEX_BITS_tb;
            index_tb = memory_index[INDEX_BITS_tb-1:0];
        end

// ciclo di lettura delle uscite
        @(posedge valid_out_tb);
        repeat(ROW_NUMBER_tb-1) begin
            @(posedge clk_tb)
            controller_prox_tb = 1;
            @(posedge clk_tb)
            controller_prox_tb = 0;
        end

// cambio delle risposte e degli indici per una nuova prova
        repeat(20) @(posedge clk_tb);
        reset_tb = 1;
        memory_response = {
            8'd12, 8'd97, 8'd35, 8'd254, 8'd25, 8'd5, 8'd128, 8'd32,
            8'd4, 8'd13, 8'd96, 8'd201, 8'd36, 8'd24, 8'd127, 8'd33
        };
        memory_index = {8'h00, 8'h04};

        @(posedge clk_tb);
        response_tb = memory_response[RESPONSE_BITS_tb-1:0];
        reset_tb = 0;

        repeat(ITERATION_tb*ROW_NUMBER_tb-1) begin
            @(posedge start_out_tb);
            response_tb = memory_response[RESPONSE_BITS_tb-1:0];
            memory_response = memory_response>>RESPONSE_BITS_tb;
        end

        index_tb = memory_index[INDEX_BITS_tb-1:0];

        repeat(ROW_NUMBER_tb) begin
            @(posedge clk_tb);
            valid_tb = 1;
            @(posedge prox_tb);
            valid_tb = 0;
            memory_index = memory_index>>INDEX_BITS_tb;
            index_tb = memory_index[INDEX_BITS_tb-1:0];
        end

        @(posedge valid_out_tb);
        repeat(ROW_NUMBER_tb-1) begin
            @(posedge clk_tb)
            controller_prox_tb = 1;
            @(posedge clk_tb)
            controller_prox_tb = 0;
        end
    end
endmodule
