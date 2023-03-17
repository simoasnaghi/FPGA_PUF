`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: tb_1bit_APUF
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_1bit_APUF(

    );

    parameter CHALLENGE_BITS_tb = 16, RESPONSE_BITS_tb = 8;

    reg clk_tb, reset_tb, start_tb;
    reg [CHALLENGE_BITS_tb-1:0]challenge_tb;
    wire [RESPONSE_BITS_tb-1:0]response_tb;

    starter #(
    .CHALLENGE_BITS(CHALLENGE_BITS_tb),
    .RESPONSE_BITS(RESPONSE_BITS_tb)
    ) starter_DUT (
        .clk(clk_tb),
        .reset(reset_tb),
        .start_in(start_tb),
        .challenge_in(challenge_tb),
        .response_out(response_tb)
    );

    always #5 clk_tb = ~clk_tb;
/*  l'uscita della PUF rimarra' valida dal colpo di clock seguente al segnale
    iniziale '1' finche' lo start sara' alto,
    quindi per cambiare la challenge o avere un nuovo valore bisogna
    abbassare e rialzare il segnale iniziale*/
    initial begin
        clk_tb <= 0;
        reset_tb = 1;
        start_tb = 0;
        challenge_tb = 32'd0;

        repeat(20) @(posedge clk_tb);
        reset_tb = 0;
        start_tb = 1;

        repeat(2) @(posedge clk_tb);
        start_tb = 0;

        repeat(10) @(posedge clk_tb);
        challenge_tb = challenge_tb+1;
        start_tb = 1;

        repeat(10) @(posedge clk_tb);
        start_tb = 0;

/*      ATTENZIONE!
    ci vogliono 3 colpi di clock prima di avere una risposta
    fare Post-Implementation Timing simulation!
    purtroppo i mux_out_down sono sempre piu' veloci della catena superiore
    ma arbiter crea delay interno all'assegnazione quindi response sempre 1
*/
        repeat(RESPONSE_BITS_tb+CHALLENGE_BITS_tb) begin
            repeat(3) @(posedge clk_tb);
            challenge_tb = challenge_tb+1;
            start_tb = 1;

            repeat(3) @(posedge clk_tb);
            start_tb = 0;
        end
    end

endmodule
