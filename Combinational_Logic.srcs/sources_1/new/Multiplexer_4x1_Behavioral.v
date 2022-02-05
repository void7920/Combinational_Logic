`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 00:47:47
// Design Name: Multiplexer 4x1 Behavioral
// Module Name: Multiplexer_4x1_Behavioral
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


module Multiplexer_4x1_Behavioral(
    o,      // output 
    i0,     // input 0
    i1,     // input 1
    i2,     // input 2
    i3,     // input 3
    s       // mode sel
    );
    
    output reg o;
    input i0;
    input i1;
    input i2;
    input i3;
    input [1:0]s;
    
    always@(*)
    begin
        casex(S)
            'b00: o=I0;
            'b01: o=I1;
            'b10: o=I2;
            'b11: o=I3;
            
            default: o=1'b0;
        endcase     
    end
endmodule
