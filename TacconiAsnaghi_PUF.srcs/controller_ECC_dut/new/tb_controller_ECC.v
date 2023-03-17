`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: tb_controller_ECC
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_controller_ECC(

    );

    parameter   RESPONSE_BITS_tb = 8,
                ROW_NUMBER_tb = 2,
                ITERATION_tb = 8,
                INDEX_BITS_tb = 8;

    reg clk_tb, reset_tb;
    reg b_en_tb, valid_en_tb, b_de_tb, valid_de_tb;
    reg [INDEX_BITS_tb-1:0] i;

    wire control_tb, en_prox_tb, de_prox_tb, valid_tb;

    reg [ROW_NUMBER_tb-1:0] memory_en = 2'b01;
    reg [ROW_NUMBER_tb-1:0] memory_de = 2'b01;

    controller_ECC #(
        .RESPONSE_BITS(RESPONSE_BITS_tb),
        .ROW_NUMBER(ROW_NUMBER_tb),
        .INDEX_BITS(INDEX_BITS_tb)
    ) controller_ECC_DUT (
        .clk(clk_tb),
        .reset(reset_tb),
        .b_en_in(b_en_tb),
        .en_valid_in(valid_en_tb),
        .b_de_in(b_de_tb),
        .de_valid_in(valid_de_tb),
        .control_out(control_tb),
        .valid_out(valid_tb),
        .en_prox_out(en_prox_tb),
        .de_prox_out(de_prox_tb)
    );

    always #5 clk_tb = ~clk_tb;

    initial begin
        clk_tb <= 0;
        reset_tb = 1;
        valid_en_tb = 0;
        valid_de_tb = 0;
        b_en_tb = 0;
        b_de_tb = 0;
        i = 0;

// aspetto tempo di reset
        repeat(20) @(posedge clk_tb);
        b_en_tb = memory_en[i];
        valid_en_tb = 1;
        reset_tb = 0;

        repeat(ROW_NUMBER_tb-1) begin
            @(posedge en_prox_tb);
            valid_en_tb = 0;
            @(posedge clk_tb);
            b_de_tb = memory_de[i];
            valid_de_tb = 1;
            @(posedge de_prox_tb);
            valid_de_tb = 0;
            i = i+1;
            b_en_tb = memory_en[i];
            b_de_tb = memory_de[i];

            @(posedge clk_tb);
            valid_en_tb = 1;
            valid_de_tb = 1;
        end

// nuovo ciclo di prova

        memory_en = 2'b01;
        memory_de = 2'b00;
        i = 0;

        repeat(20) @(posedge clk_tb);
        reset_tb = 1;
        valid_en_tb = 1;
        b_en_tb = memory_en[i];
        valid_de_tb = 1;
        b_de_tb = memory_de[i];
        @(posedge clk_tb)
        reset_tb = 0;

        repeat(ROW_NUMBER_tb-1) begin
            @(posedge clk_tb);
            i = i+1;
            b_en_tb = memory_en[i];
            b_de_tb = memory_de[i];

            @(posedge clk_tb);
            valid_de_tb = 0;
            valid_en_tb = 0;
        end
    end

endmodule

