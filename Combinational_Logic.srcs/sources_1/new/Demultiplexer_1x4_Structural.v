`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 00:47:47
// Design Name: Demultiplexer 1x4 Structural
// Module Name: Demultiplexer_1x4_Structural
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


module Demultiplexer_1x4_Structural(
    o0,     // output 0 
    o1,     // output 1
    o2,     // output 2
    o3,     // output 3
    i,      // input 
    s       // mode sel
    );
    
    output o0;
    output o1;
    output o2;
    output o3;
    input i; 
    input [1:0]s;
    
    and(o0, i, ~s[1], ~s[0]);
    and(o1, i, ~S[1], s[0]);
    and(o2, i, s[1], ~s[0]);
    and(o3, i, s[1], s[0]);
endmodule
