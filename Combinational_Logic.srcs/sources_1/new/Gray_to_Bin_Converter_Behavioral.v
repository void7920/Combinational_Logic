`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 23:05:10
// Design Name: Gray to Binary Converter Behavioral
// Module Name: Gray_to_Bin_Converter_Behavioral
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


module Gray_to_Bin_Converter_Behavioral #(parameter size = 4)(
    bin,
    gray
    );
    
    output reg [size-1:0]bin;
    input [size-1:0]gray;
    
    always@(*)
    begin
        bin[i] =^ gray[i]>>1;
    end
endmodule
