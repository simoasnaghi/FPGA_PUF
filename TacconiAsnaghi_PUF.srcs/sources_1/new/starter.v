`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: starter
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


/*
    per la basys3 artix7 128 bit di challenge  e 64 bit di risposta
    richiedono troppe risorse di I/O
*/
module starter #(parameter CHALLENGE_BITS = 16, RESPONSE_BITS = 8) (
/*  per velocizzare la simulazione utilizzo paremetri più piccoli ma si
    possono usare fino a 32 bit di challenge e 64 di response*/
    input clk,
    input reset,
    input start_in,
    input [CHALLENGE_BITS-1:0] challenge_in,

    output [RESPONSE_BITS-1:0] response_out

    );

    generate
        genvar i;
        for (i=0; i < RESPONSE_BITS; i=i+1)
        begin: SINGLE_APUF_GENERATOR
            //  per evitare ottimizzazioni
            (* dont_touch="true" *) reg trigger_up;
            (* dont_touch="true" *) reg trigger_down;
            (* dont_touch="true" *) wire up_chain;
            (* dont_touch="true" *) wire down_chain;

            singlebitAPUF #(
            .CHALLENGE_BITS(CHALLENGE_BITS)
            ) singlebitAPUF_inst (
                .trigger_up_in(trigger_up),
                .trigger_down_in(trigger_down),
                .challenge_in(challenge_in),
                .up_chain_out(up_chain),    /*arbiter_inst[i].d_ff_in*/
                .down_chain_out(down_chain) /*arbiter_inst[i].ck_ff_in*/
            );

            arbiter
            arbiter_inst (
                .clk(clk),
                .reset(reset),
                .d_ff_in(up_chain), /*singlebitAPUF_inst[i].up_chain_out*/
                .ck_ff_in(down_chain),  /*singlebitAPUF_inst[i].down_chain_out*/
                .response_out(response_out[i])
            );
/*
            creiamo un trigger per ogni singlebitAPUF cosi' da avere segnali
            sincroni all'inizio e non avere lunghezza diversa nei percorsi
            superiori e inferiori delle catene di mux
*/
            always @ ( posedge clk ) begin
                if (reset) begin
                    trigger_up = 0;
                    trigger_down = 0;
                end
                else if (start_in) begin
                    trigger_up = 1;
                    trigger_down = 1;
                end else begin
                    trigger_up = 0;
                    trigger_down = 0;
                end
            end
        end

    endgenerate

endmodule

