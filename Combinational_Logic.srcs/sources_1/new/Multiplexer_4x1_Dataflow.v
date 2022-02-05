`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 00:47:47
// Design Name: Multiplexer 4x1 Dataflow
// Module Name: Multiplexer_4x1_Dataflow
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


module Multiplexer_4x1_Dataflow(
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
    
    assign o = (i0 & ~s[0] & ~s[1]) | (i1 & s[0] & ~s[1]) | (i2 & ~s[0] & s[1]) | (i3 & s[0] & s[1]);
endmodule
