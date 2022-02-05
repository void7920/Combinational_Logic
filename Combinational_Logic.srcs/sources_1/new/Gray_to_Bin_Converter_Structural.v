`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 23:05:10
// Design Name: Gray to Binary Converter Structural
// Module Name: Gray_to_Bin_Converter_Structural
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


module Gray_to_Bin_Converter_Structural #(parameter size = 4)(
    bin,
    gray
    );
    
    output [size-1:0]bin;
    input [size-1:0]gray;
    
    genvar i;
    
    for(i=0; i<size; i=i+1)
    begin
        if(i<size-1)
            xor(b[i], g[i], b[i+1]);
        
        else
            buf(b[i], g[i]);
    end
endmodule
