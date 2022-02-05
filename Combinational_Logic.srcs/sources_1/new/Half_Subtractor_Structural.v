`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Half Subtractor Structural
// Module Name: Half_Subtractor_Structural
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


module Half_Subtractor_Structural(
    br_out,     // borrow out
    d,          // difference
    a,          // a
    b,          // b
    );
   
    output br_out;
    output d;
    input a;
    input b;
    
    xor(d, a, b);
    and(br, ~a, b);
endmodule
