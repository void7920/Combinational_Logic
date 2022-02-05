`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 22:55:56
// Design Name: Comparator Behavioral
// Module Name: Comparator_Behavioral
// Project Name: 
// Target Devices: 
// Tool Versions: Vivaod 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Comparator_Behavioral #(parameter size = 4)(
    eq, 
    greater, 
    less,
    a,
    b    
    );
    
    output reg eq;
    output reg greater;
    output reg less;
    input [size-1:0]a;
    input [size-1:0]b;
    
    always@(*)
    begin
        if(a==b)
        begin
            eq = 1'b1;
            greater = 1'b0;
            less = 1'b0;
        end
        
        else if(a>b)
        begin
            eq = 1'b0;
            greater = 1'b1;
            less = 1'b0;
        end
        
        else if(a<b)
        begin
            eq = 1'b0;
            greater = 1'b0;
            less = 1'b1;
        end
        
        else
        begin
            eq = 1'b0;
            left = 1'b0;
            right = 1'b0;
        end
    end
endmodule
