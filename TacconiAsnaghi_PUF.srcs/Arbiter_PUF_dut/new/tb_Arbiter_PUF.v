`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: tb_Arbiter_PUF
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_Arbiter_PUF(

    );

    parameter   RESPONSE_BITS_tb = 8,
                ROW_NUMBER_tb = 2,
                ITERATION_tb = 8,
                CHALLENGE_BITS_tb = 16,
                INDEX_BITS_tb = 8;

    reg clk_tb, reset_tb, start_tb;
    reg [CHALLENGE_BITS_tb-1:0] challenge_tb;

    wire control_tb, valid_tb;
    wire [RESPONSE_BITS_tb-1:0] response_tb;

    Arbiter_PUF #(
        .CHALLENGE_BITS(CHALLENGE_BITS_tb),
        .RESPONSE_BITS(RESPONSE_BITS_tb),
        .ROW_NUMBER(ROW_NUMBER_tb),
        .ITERATION(ITERATION_tb)
    ) Arbiter_PUF_inst (
        .clk(clk_tb),
        .reset(reset_tb),
        .start_in(start_tb),
        .challenge_in(challenge_tb),
        .response_out(response_tb),
        .control_out(control_tb),
        .valid_out(valid_tb)
    );

    always #5 clk_tb = ~clk_tb;

    initial begin
        clk_tb <= 0;
        reset_tb = 1;
        start_tb = 0;
        challenge_tb = 0;

        repeat(20) @(posedge clk_tb);
        reset_tb = 0;
        start_tb = 1;

        //repeat(3) 
        @(posedge clk_tb);
        start_tb = 0;

        /*repeat(CHALLENGE_BITS_tb) begin
            repeat(3) @(posedge clk_tb);
            challenge_tb = challenge_tb+1;
            start_tb = 1;

            repeat(3) @(posedge clk_tb);
            start_tb = 0;
        end*/
    end
endmodule
