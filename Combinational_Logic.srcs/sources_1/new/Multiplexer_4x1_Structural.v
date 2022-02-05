`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/06 00:47:47
// Design Name: 
// Module Name: Multiplexer_4x1_Structural
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Multiplexer_4x1_Structural(
    o,      // output 
    i0,     // input 0
    i1,     // input 1
    i2,     // input 2
    i3,     // input 3
    s       // mode sel
    );
    
    output o;
    input i0;
    input i1;
    input i2;
    input i3;
    input [1:0]s;
    
    wire w0, w1, w2, w3;
    
    and(w0, i0, ~s[0], ~s[1]);
    and(w1, i1, s[0], ~s[1]);
    and(w2, i2, ~s[0], s[1]);
    and(w3, i3, s[0], s[1]);
    
    or(o, w0, w1, w2, w3);
endmodule
