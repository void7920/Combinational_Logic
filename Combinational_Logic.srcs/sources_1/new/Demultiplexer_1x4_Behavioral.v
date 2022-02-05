`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 00:47:47
// Design Name: Demultplexer 1x4 Behavioral
// Module Name: Demultiplexer_1x4_Behavioral
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


module Demultiplexer_1x4_Behavioral(
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
    
    always@(*)
    begin
        casex(s)
            'b00:
                begin
                    o0 = 1;
                    o1 = 0;
                    o2 = 0;
                    o3 = 0;
                end
            'b01:
                begin
                    o0 = 0;
                    o1 = 1;
                    o2 = 0;
                    o3 = 0;
                end
            'b10:
                begin
                    o0 = 0;
                    o1 = 0;
                    o2 = 1;
                    o3 = 0;
                end
            'b11:
                begin
                    o0 = 0;
                    o1 = 0;
                    o2 = 0;
                    o3 = 1;
                end
        endcase
    end
endmodule
