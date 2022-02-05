`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 01:21:25
// Design Name: Testbench Encoder
// Module Name: Tb_ENC
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


module Tb_ENC();
    reg [3:0]D;
    wire [1:0]Y0; 
    wire V_0;
    wire [1:0]Y1; 
    wire V_1;
    wire [1:0]Y2; 
    wire V_2;
    
    Encoder_4x2_Behavioral sim_ENC0(Y0[1], Y0[0], V_0, D[0], D[1], D[2], D[3]);
    Encoder_4x2_Dataflow sim_ENC1(Y1[1], Y1[0], V_1, D[0], D[1], D[2], D[3]);
    Encoder_4x2_Structural sim_ENC2(Y2[1], Y2[0], V_2, D[0], D[1], D[2], D[3]);
    
    initial 
    begin
        D = 4'b0000;
    end
    
    initial
    begin
        #50 D = 4'b0001;
        #50 D = 4'b0010;
        #50 D = 4'b0011;
        #50 D = 4'b0100;
        #50 D = 4'b0101;
        #50 D = 4'b0110;
        #50 D = 4'b0111;
        #50 D = 4'b1000;
        #50 D = 4'b1001;
        #50 D = 4'b1010;
        #50 D = 4'b1011;
        #50 D = 4'b1100;
        #50 D = 4'b1101;
        #50 D = 4'b1110;
        #50 D = 4'b1111;
    end
endmodule
