`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi 
// 
// Create Date: 2022/02/05 23:05:10
// Design Name: Binary to Gray Converter Behavioral
// Module Name: Bin_to_Gray_Converter_Behavioral
// Project Name: 
// Target Devices: 
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


module Bin_to_Gray_Converter_Behavioral #(parameter size = 4)(
    gray,
    bin
    );
    
    output reg [size-1:0]gray;
    input [size-1:0]bin;
    
    always@(*)
    begin
        gray = bin>>1 ^ bin; 
    end
endmodule
