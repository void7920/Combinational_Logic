`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 22:38:50
// Design Name: Testbench Full Subtractor
// Module Name: Tb_FS
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


module Tb_FS();
    reg A, B, Br_in;
    wire Br0, D0;
    wire Br1, D1;
    wire Br2, D2;
    
    Full_Subtractor_Behavioral sim_FS0(Br0, D0, A, B, Br_in);
    Full_Subtractor_Dataflow sim_FS1(Br1, D1, A, B, Br_in);
    Full_Subtractor_Structural sim_FS2(Br2, D2, A, B, Br_in);
    
    initial
    begin
        A=0;
        B=0;
        Br_in=0;
    end
    
    initial
    begin
        #100 A=0; B=0; Br_in=1;
        #100 A=0; B=1; Br_in=0;
        #100 A=0; B=1; Br_in=1;
        #100 A=1; B=0; Br_in=0;
        #100 A=1; B=0; Br_in=1;
        #100 A=1; B=1; Br_in=0;
        #100 A=1; B=1; Br_in=1;
    end
endmodule
