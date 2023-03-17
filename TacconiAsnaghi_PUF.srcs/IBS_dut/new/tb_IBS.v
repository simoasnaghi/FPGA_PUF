`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: tb_IBS
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_IBS(

    );

    parameter   RESPONSE_BITS_tb = 8,
                ROW_NUMBER_tb = 2,
                ITERATION_tb = 8,
                INDEX_BITS_tb = 8;

    reg clk_tb, reset_tb;
    reg [RESPONSE_BITS_tb-1:0] response_tb;

    wire start_tb,control_tb, valid_tb;

    reg [2*ROW_NUMBER_tb*RESPONSE_BITS_tb*ITERATION_tb-1:0] memory = {
        8'd12, 8'd97, 8'd35, 8'd254, 8'd25, 8'd3, 8'd128, 8'd32,
        8'd255, 8'd4, 8'd13, 8'd96, 8'd36, 8'd24, 8'd127, 8'd33,
        8'd12, 8'd97, 8'd35, 8'd254, 8'd25, 8'd5, 8'd128, 8'd32,
        8'd201, 8'd4, 8'd13, 8'd96, 8'd36, 8'd24, 8'd127, 8'd33
    };

    IBS_Standalone #(
        .RESPONSE_BITS(RESPONSE_BITS_tb),
        .ROW_NUMBER(ROW_NUMBER_tb),
        .ITERATION(ITERATION_tb),
        .INDEX_BITS(INDEX_BITS_tb)
    ) IBS_Standalone_inst(
        .clk(clk_tb),
        .reset(reset_tb),
        .response_in(response_tb),
        .start_out(start_tb),
        .control_out(control_tb),
        .valid_out(valid_tb)
    );

    always #5 clk_tb = ~clk_tb;

    initial begin
        clk_tb <= 0;
        reset_tb = 1;
        response_tb = 0;

// aspetto tempo di reset
        repeat(20) @(posedge clk_tb);
        response_tb = memory[RESPONSE_BITS_tb-1:0];
        reset_tb = 0;

// inizio ciclo di prova (esito positivo)
        repeat(2*ROW_NUMBER_tb*ITERATION_tb-1) begin
            @(posedge start_tb);
            memory = memory>>RESPONSE_BITS_tb;
            response_tb = memory[RESPONSE_BITS_tb-1:0];
        end

// secondo ciclo di prova (esito negativo)
        repeat(20) @(posedge clk_tb);
        reset_tb = 1;
        memory = {
            8'd12, 8'd97, 8'd35, 8'd254, 8'd25, 8'd3, 8'd128, 8'd32,
            8'd255, 8'd4, 8'd13, 8'd96, 8'd36, 8'd24, 8'd127, 8'd33,
            8'd12, 8'd97, 8'd35, 8'd254, 8'd25, 8'd5, 8'd128, 8'd32,
            8'd4, 8'd13, 8'd96, 8'd201, 8'd36, 8'd24, 8'd127, 8'd33
        };
        @(posedge clk_tb);
        response_tb = memory[RESPONSE_BITS_tb-1:0];
        reset_tb = 0;

        repeat(2*ROW_NUMBER_tb*ITERATION_tb-1) begin
            @(posedge start_tb);
            memory = memory>>RESPONSE_BITS_tb;
            response_tb = memory[RESPONSE_BITS_tb-1:0];
        end
    end

endmodule
