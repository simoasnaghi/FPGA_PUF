`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Tacconi Davide, Asnaghi Simone
// 
// Create Date: 08.02.2022 22:54:16
// Design Name: PUF
// Module Name: singlebitAPUF
// Project Name: TacconiAsnaghi_PUF
// Target Devices: Basys3 - Artix7
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module singlebitAPUF #(parameter CHALLENGE_BITS = 16) (

    input trigger_up_in,
    input trigger_down_in,
    input [CHALLENGE_BITS-1:0] challenge_in,

    output wire up_chain_out,
    output wire down_chain_out

    );

    // per evitare ottimizzazioni
    (* dont_touch="true" *) wire [CHALLENGE_BITS-1-1:0] mux_out_up;
    (* dont_touch="true" *) wire [CHALLENGE_BITS-1-1:0] mux_out_down;

    generate    // generazione chain superiore
        genvar i;
        for (i=0; i < CHALLENGE_BITS; i=i+1)
          begin: UP
              if (i==0) begin   // mux iniziale
                // LUT3: 3-input Look-Up Table with general output (Mapped to a LUT6)
                // 7 Series
                // Xilinx HDL Language Template, version 2021.2
                LUT3 #(             // bit di selezione da MSB a lSB: Ch, Down, UP
                .INIT(8'b1010_1010) // Specify LUT Contents
                ) LUT3_inst (
                .O(mux_out_up[i]), // LUT general output
                .I0(trigger_up_in), // LUT input // ingressi dallo starter
                .I1(trigger_down_in), // LUT input
                .I2(challenge_in[i]) // LUT input
                );
            end else if (i == CHALLENGE_BITS-1) begin   // mux finale della chain superiore
                LUT3 #(
                .INIT(8'b1010_1010)
                ) LUT3_inst (
                .O(up_chain_out),   // collegata al pin di uscita della chain superiore
                .I0(mux_out_up[i-1]),   /*UP[i-1].LUT3_inst.O*/
                .I1(mux_out_down[i-1]), /*DOWN[i-1].LUT3_inst.O*/
                .I2(challenge_in[i])
                );
            end else begin // mux interni alla chain superiore
                LUT3 #(
                .INIT(8'b1010_1010)
                ) LUT3_inst (
                .O(mux_out_up[i]),  /*UP[i+1].LUT3_inst.I0*/
                .I0(mux_out_up[i-1]),/*UP[i-1].LUT3_inst.O*/ // ingressi LUT dalle uscite dei mux precedenti
                .I1(mux_out_down[i-1]), /*DOWN[i-1].LUT3_inst.O*/
                .I2(challenge_in[i])
                );
            end
        end
    endgenerate

    generate  // generazione chain inferiore
        genvar k;
        for (k=0; k < CHALLENGE_BITS; k=k+1)
        begin: DOWN
            if (k==0) begin // mux iniziale
                LUT3 #(
                .INIT(8'b1010_1010)
                ) LUT3_inst (
                .O(mux_out_down[k]),
                .I0(trigger_down_in), // inversione dei bit di ingresso rispetto alla chain superiore per tutti i mux
                .I1(trigger_up_in),
                .I2(challenge_in[k])
                );
            end else if (k == CHALLENGE_BITS-1) begin   // mux finale
                LUT3 #(
                .INIT(8'b1010_1010)
                ) LUT3_inst (
                .O(down_chain_out),
                .I0(mux_out_down[k-1]), /*DOWN[k-1].LUT3_inst.O*/
                .I1(mux_out_up[k-1]),   /*UP[k-1].LUT3_inst.O*/
                .I2(challenge_in[k])
                );
            end else begin // mux interni
                LUT3 #(
                .INIT(8'b1010_1010)
                ) LUT3_inst (
                .O(mux_out_down[k]),    /*LUT3_down_inst[k+1].I0*/
                .I0(mux_out_down[k-1]), /*DOWN[k-1].LUT3_inst.O*/
                .I1(mux_out_up[k-1]),   /*UP[k-1].LUT3_inst.O*/
                .I2(challenge_in[k])
                );
            end
        end
      endgenerate

endmodule

