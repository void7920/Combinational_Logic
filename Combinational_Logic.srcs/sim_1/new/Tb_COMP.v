`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 23:40:13
// Design Name: Testbench Comparator
// Module Name: Tb_COMP
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


module Tb_COMP();
    parameter size = 4;

    reg [size-1:0]a;
    reg [size-1:0]b;
    wire eq0, eq1, eq2;
    wire left0, left1, left2;
    wire right0, right1, right2;
    
    Comparator_Behavioral sim_COMP0(eq0, left0, right0, a, b);
    Comparator_Dataflow sim_COMP1(eq1, left1, right1, a, b);
    Comparator_Structural sim_COMP2(eq2, left2, right2, a, b);
    
    initial
    begin
        a = 4'b0000;
        b = 4'b0000;
        
        #100 a = 4'b1111; b = 4'b1111;
        #100 a = 4'b1001; b = 4'b1100;
        #100 a = 4'b1000; b = 4'b0111;
        #100 a = 4'b1001; b = 4'b0101;
        #100 a = 4'b0111; b = 4'b1100;
        #100 a = 4'b0011; b = 4'b1001;
    end
endmodule
