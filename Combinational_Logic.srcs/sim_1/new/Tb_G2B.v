`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 23:34:25
// Design Name: Testbench Gray to Binary Converter
// Module Name: Tb_G2B
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


module Tb_G2B();
    parameter size = 4;
    
    reg [size-1:0]g;
    wire [size-1:0]b0;
    wire [size-1:0]b1;
    wire [size-1:0]b2;
    
    Gray_to_Bin_Converter_Behavioral sim_GB0(b0, g);
    Gray_to_Bin_Converter_Dataflow sim_GB1(b1, g);
    Gray_to_Bin_Converter_Structural sim_GB2(b2, g);
    
    initial
    begin
        g = 4'b0000;
        
        #100 g=4'b0001;
        #100 g=4'b0010;
        #100 g=4'b0011;
        #100 g=4'b0100;
        #100 g=4'b0101;
        #100 g=4'b0110;
        #100 g=4'b0111;
        #100 g=4'b1000;
        #100 g=4'b1001;
        #100 g=4'b1010;
        #100 g=4'b1011;
        #100 g=4'b1100;
        #100 g=4'b1101;
        #100 g=4'b1111;
    end
endmodule
