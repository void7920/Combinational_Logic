`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 22:38:50
// Design Name: Testbench Half Subtractor
// Module Name: Tb_HS
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


module Tb_HS();
    reg A, B;
    wire Br0, D0;
    wire Br1, D1;
    wire Br2, D2;
    
    Half_Subtractor_Behavioral sim_HS0(Br0, D0, A, B);
    Half_Subtractor_Dataflow sim_HS1(Br1, D1, A, B);
    Half_Subtractor_Structural sim_HS2(Br2, D2, A, B);
    
    initial
    begin
        A=0;
        B=0;
    end
    
    initial
    begin
        #100 A=0; B=1;
        #100 A=1; B=0;
        #100 A=1; B=1;
    end
endmodule
