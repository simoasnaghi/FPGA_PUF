`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: arbiter
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module arbiter(

    input clk,
    input reset,
    input d_ff_in,
    input ck_ff_in,

    output reg response_out

    );

    reg response_internal;

/*  ! ATTENZIONE !
    il processo di memorizzazione sia interna che assegnandola direttamente al
    segnale di uscita ha un ritardo tale da far arrivare il segnale d_ff_in e
    quindi sara' sempre 1
*/
    always @ ( posedge clk, posedge ck_ff_in ) begin
        if (reset) begin
            response_internal = 0;
        end else begin
            if (ck_ff_in) begin
                response_out = d_ff_in;
            end else begin
                response_out = 0;
            end

        end
    end



endmodule

