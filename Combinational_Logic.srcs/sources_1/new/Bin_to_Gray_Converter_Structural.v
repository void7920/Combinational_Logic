`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 23:02:49
// Design Name: Binary to Gray Converter Structrual
// Module Name: Bin_to_Gray_Converter_Structural
// Project Name: 
// Target Devices: 
// Tool Versions: Vivaod 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Bin_to_Gray_Converter_Structural#(parameter size = 4)(
    gray,
    bin
    );
    
    output [size-1:0]gray;
    input [size-1:0]bin;
    
    genvar i;
    for(i=0; i<size; i=i+1)
    begin
        if(i<size-1)
            xor(gray[i], bin[i+1], bin[i]);
        
        else
            buf(gray[i], bin[i]); 
    end
endmodule
