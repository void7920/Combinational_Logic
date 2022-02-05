`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Parallel Adder / Subtractor
// Module Name: Parallel_Adder_Subtractor
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


module Parallel_Adder_Subtractor #(parameter size = 4)(
    c_out,      // carry out
    s,          // sum
    ovf,        // overflow
    sel,         // mode 0 = add / 1 = sub
    a,          // a
    b,          // b
    );
    
    output reg c_out;
    output reg [size-1:0]s;
    output ovf;
    input sel;
    input [size-1:0]a;
    input [size-1:0]b;
    
    wire [size-1:0]carry;
    wire [size-1:0]xr;
    
    assign c_out = carry[size-1];
    assign ovf = carry[size-1] | carry[size-2];
    
    genvar i;
    generate
        for(i=0; i<size; i=i+1)
        begin:PAS
            xor(xr[i], sel, b[i]);
             
            if(i==0)
            begin: FA
                Full_Adder_Behavioral fa(.c_out(carry[i]), .s(s[i]), .c_in(sel), .a(a[i]), .b(xr[i]));
            end
            
            else
            begin: FA
                Full_Adder_Behavioral fa(.c_out(carry[i]), .s(s[i]), .c_in(carry[i-1]), .a(a[i]), .b(xr[i]));
            end
        end
    endgenerate
endmodule
