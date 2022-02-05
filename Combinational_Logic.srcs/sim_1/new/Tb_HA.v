`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 22:38:50
// Design Name: Testbench Half Adder
// Module Name: Tb_HA
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


module Tb_HA();
    reg A, B;
    wire C0, S0;
    wire C1, S1;
    wire C2, S2;
    
    Half_Adder_Behavioral sim_HA0(C0, S0, A, B);
    Half_Adder_Dataflow sim_HA1(C1, S1, A, B);
    Half_Adder_Structural sim_HA2(C2, S2, A, B);
    
    initial
    begin
             A=0; B=0;
        #100 A=0; B=1;
        #100 A=1; B=0;
        #100 A=1; B=1;
    end
endmodule
