`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 01:10:23
// Design Name: Decoder 2x4 Behavioral
// Module Name: Decoder_2x4_Behavioral
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


module Decoder_2x4_Behavioral(
    o0,
    o1,
    o2,
    o3,
    i1,
    i0
    );

    output reg o0;
    output reg o1;
    output reg o2;
    output reg o3;
    input i1;
    input i0;
    
    always@(*)
    begin
        case({i1, i0})
            2'b00:
                begin
                    o0 = 1'b1;
                    o1 = 1'b0;
                    o2 = 1'b0;
                    o3 = 1'b0;
                end
            2'b01: 
                begin
                    o0 = 1'b0;
                    o1 = 1'b1;
                    o2 = 1'b0;
                    o3 = 1'b0;
                end 
            2'b10: 
                begin
                    o0 = 1'b0;
                    o1 = 1'b0;
                    o2 = 1'b1;
                    o3 = 1'b0;
                end 
            2'b11: 
                begin
                    o0 = 1'b0;
                    o1 = 1'b0;
                    o2 = 1'b0;
                    o3 = 1'b1;
                end 
        endcase
    end
endmodule
