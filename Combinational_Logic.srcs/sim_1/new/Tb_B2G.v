`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 23:34:25
// Design Name: Testbench Binary to Gray Converter
// Module Name: Tb_B2G
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


module Tb_B2G();
    parameter size = 4;
    
    reg [size-1:0]b;
    wire [size-1:0]g0;
    wire [size-1:0]g1;
    wire [size-1:0]g2;
    
    Bin_to_Gray_Converter_Behavioral sim_BG0(g0, b);
    Bin_to_Gray_Converter_Dataflow sim_BG2(g1, b);
    Bin_to_Gray_Converter_Structural sim_BG1(g2, b);
    
    initial
    begin
        b = 4'b0000;
        
        #100 b=4'b0001;
        #100 b=4'b0010;
        #100 b=4'b0011;
        #100 b=4'b0100;
        #100 b=4'b0101;
        #100 b=4'b0110;
        #100 b=4'b0111;
        #100 b=4'b1000;
        #100 b=4'b1001;
        #100 b=4'b1010;
        #100 b=4'b1011;
        #100 b=4'b1100;
        #100 b=4'b1101;
        #100 b=4'b1111;
    end
endmodule
