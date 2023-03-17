`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: Arbiter_PUF
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module Arbiter_PUF #(CHALLENGE_BITS = 16, RESPONSE_BITS = 8, ROW_NUMBER = 2,
    ITERATION = 8) (

    input clk,
    input reset,
    input start_in,
    input [CHALLENGE_BITS-1:0] challenge_in,

    output reg [RESPONSE_BITS-1:0] response_out,
    output control_out,
    output valid_out

    );

    localparam INDEX_BITS = 8;

    reg start1, reset2;
    wire start2;
    reg [RESPONSE_BITS-1:0] response_internal;
    reg [INDEX_BITS-1:0] response_number=0;

    starter #(
        .CHALLENGE_BITS(CHALLENGE_BITS),
        .RESPONSE_BITS(RESPONSE_BITS)
    ) starter_inst (
        .clk(clk),
        .reset(reset),
        .start_in(start1),
        .challenge_in(challenge_in),
        .response_out(IBS_Standalone_inst.response_in)
    );

    IBS_Standalone #(
        .RESPONSE_BITS(RESPONSE_BITS),
        .ROW_NUMBER(ROW_NUMBER),
        .ITERATION(ITERATION),
        .INDEX_BITS(INDEX_BITS)
    ) IBS_Standalone_inst (
        .clk(clk),
        .reset(reset2),
        .response_in(starter_inst.response_out),
        .start_out(start2),
        .control_out(control_out),
        .valid_out(valid_out)
    );

    always @ ( posedge clk ) begin
        if (reset) begin
            reset2 = reset;
        end else begin
            if (start_in) begin     
                start1 = start_in;
                reset2 = 1;
            end else begin  //  facciamo partire l'ECC
                start1 = start2;
                reset2 = 0;
            end
         end
    end
/*
            esponiamo all'uscita la risposta immagazzinata solamente se l'esito
            dell'ECC risulta valido
*/
    always @ ( valid_out ) begin
            if (valid_out) begin
                response_out = response_internal;
            end else begin
                response_out = 0;
            end
    end
 //  registriamo la prima risposta della PUF   
    always @ ( starter_inst.response_out ) begin
        if (response_number==1) begin
            response_internal = starter_inst.response_out;
        end
        response_number = response_number+1;
    end

endmodule

