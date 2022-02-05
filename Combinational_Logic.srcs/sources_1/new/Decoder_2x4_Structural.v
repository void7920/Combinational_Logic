`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 01:10:23
// Design Name: Decoder 2x4 Structural
// Module Name: Decoder_2x4_Structural
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


module Decoder_2x4_Structural(
    o0,
    o1,
    o2,
    o3,
    i1,
    i0
    );

    output o0;
    output o1;
    output o2;
    output o3;
    input i1;
    input i0;
    
    and(o0, ~i0, ~i1);
    and(o1, ~i0, i1);
    and(o2, i0, ~i1);
    and(o3, i0, i1);
endmodule
