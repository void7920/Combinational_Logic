`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 00:17:08
// Design Name: Testbench Parallel Adder / Subtractor
// Module Name: Tb_PAS
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


module Tb_PAS();
    parameter size = 4;
    
    reg [size:0]in0;  // maximum input is 2^(size-1), becuz in[size] is "sel"
    reg [size-1:0]in1;
    
    wire [size:0]s;
    
    Parallel_Adder_Subtractor #(size) sim_PAS(.c_out(s[size]), .s(s[size-1:0]), .ovf(), .sel(in0[size]), .a(in0), .b(in1));
    
    initial
    begin
        in0 = 0;
        in1 = 0;
    end
    
    initial
    begin
        #50  in0[size]=0; in0[size-1:0]=16; in1=14;
        #50  in0[size]=1; in0[size-1:0]=15; in1=15;
        #50  in0[size]=0; in0[size-1:0]=3; in1=12;
        #50  in0[size]=1; in0[size-1:0]=12; in1=4;
        #50  in0[size]=0; in0[size-1:0]=10; in1=8;
        #50  in0[size]=1; in0[size-1:0]=9; in1=3;
        #50  in0[size]=0; in0[size-1:0]=8; in1=10;
        #50  in0[size]=1; in0[size-1:0]=13; in1=11;
    end
endmodule
