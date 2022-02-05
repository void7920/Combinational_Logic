`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Parallel Adder
// Module Name: Parallel_Adder
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


module Parallel_Adder #(parameter size = 4)(
    c_out,      // carry out
    s,          // sum
    a,          // a
    b,          // b
    c_in        // carry in
    );
    
    output reg c_out;
    output reg [size-1:0]s;
    input [size-1:0]a;
    input [size-1:0]b;
    input c_in;
    
    wire [size-1:0]c;
    
    assign c_out = c[size-1];
    
    genvar i;
    generate
        for(i=0; i<size; i=i+1)
        begin: PA
            if(i==0)
            begin: FA
                Full_Adder_Dataflow FA(.c_out(c[i]), .s(s[i]), .a(a[i]), .b(b[i]), .c_in(c_in));
            end
            
            else
            begin: FA
                Full_Adder_Dataflow FA(.c_out(c[i+1]), .s(s[i]), .a(a[i]), .b(b[i]), .c_in(c[i-1]));
            end
        end
    endgenerate
endmodule
