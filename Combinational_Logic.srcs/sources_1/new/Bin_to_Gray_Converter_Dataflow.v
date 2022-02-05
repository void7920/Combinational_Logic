`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 23:02:49
// Design Name: Binary to Gray Converter Dataflow
// Module Name: Bin_to_Gray_Converter_Dataflow
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


module Bin_to_Gray_Converter_Dataflow #(parameter size = 4)(
    gray,
    bin
    );
    
    output [size-1:0]gray;
    input [size-1:0]bin;
    
    assign gray = (bin >> 1) ^ bin;
    
//    genvar i;
//    for(i=0; i<size; i=i+1)
//    begin
//        if(i<size-1)
//            assign gray[i] = b[i+1] ^ b[i];
        
//        else
//            assign gray[i] = b[i];
//    end
endmodule
