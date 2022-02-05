`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 01:10:23
// Design Name: Decoder 2x4 Dataflow
// Module Name: Decoder_2x4_Dataflow
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


module Decoder_2x4_Dataflow(
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
    
    assign o0 = ~i0 & ~i1;
    assign o1 = ~i0 & i1;
    assign o2 = i0 & ~i1;
    assign o3 = i0 & i1;
endmodule
