`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 01:17:40
// Design Name: Testbench Decoder
// Module Name: Tb_DEC
// Project Name: 
// Target Devices: Simulation
// Tool Versions: Vivado 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_DEC();
    reg [1:0]S;
    wire [3:0]A0;
    wire [3:0]A1;
    wire [3:0]A2;
    
    Decoder_2x4_Behavioral sim_DEC0(A0[3], A0[2], A0[1], A0[0], S[1], S[0]);
    Decoder_2x4_Dataflow sim_DEC1(A1[3], A1[2], A1[1], A1[0], S[1], S[0]);
    Decoder_2x4_Structural sim_DEC2(A2[3], A2[2], A2[1], A2[0], S[1], S[0]);
    
    initial 
    begin
        S=2'b00;
    end
    
    initial
    begin
        #200 S=2'b01;
        #200 S=2'b10;
        #200 S=2'b11;
    end
endmodule
