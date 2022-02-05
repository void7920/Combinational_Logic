`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Soek Hoon Choi
// 
// Create Date: 2022/02/05 22:38:50
// Design Name: Testbench Full Adder
// Module Name: Tb_FA
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


module Tb_FA();
    reg A, B, C_in;
    wire C0, S0;
    wire C1, S1;
    wire C2, S2;
    
    Full_Adder_Behavioral sim_FA0(C0, S0, A, B, C_in);
    Full_Adder_Dataflow sim_FA1(C1, S1, A, B, C_in);
    Full_Adder_Structural sim_FA2(C2, S2, A, B, C_in);
    
    initial
    begin
        A=0;
        B=0;
        C_in=0;
    end
    
    initial
    begin
        #100 A=0; B=0; C_in=1;
        #100 A=0; B=1; C_in=0;
        #100 A=0; B=1; C_in=1;
        #100 A=1; B=0; C_in=0;
        #100 A=1; B=0; C_in=1;
        #100 A=1; B=1; C_in=0;
        #100 A=1; B=1; C_in=1;
    end
endmodule
