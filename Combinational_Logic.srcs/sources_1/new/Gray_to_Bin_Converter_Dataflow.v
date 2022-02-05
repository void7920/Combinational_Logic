`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 23:39:15
// Design Name: Gray to Binary Converter Dataflow
// Module Name: Gray_to_Bin_Converter_Dataflow
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


module Gray_to_Bin_Converter_Dataflow #(parameter size = 4)(
    bin,
    gray
    );
    
    output [size-1:0]bin;
    input [size-1:0]gray;
    
    genvar i;
    
    for(i=0; i<size; i=i+1)
    begin
        assign bin[i] =^ (gray >> i);
    end
endmodule