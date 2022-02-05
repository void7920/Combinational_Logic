`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 00:17:08
// Design Name: Testbench Parallel Adder
// Module Name: Tb_PA
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


module Tb_PA();
    parameter size = 4;
    
    reg [size-1:0]in0;
    reg [size-1:0]in1;
    
    wire [size:0]sum;
    
    Parallel_Adder #(4) sim_PA(.c_out(sum[size]), .s(sum[size-1:0]), .a(in0), .b(in1));
    
    initial
    begin
        #100 in0=2; in1=3;
        #100 in0=4; in1=5;
        #100 in0=8; in1=2;
        #100 in0=9; in1=0;
        #100 in0=7; in1=10;
    end
endmodule
