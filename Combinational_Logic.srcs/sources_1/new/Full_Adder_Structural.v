`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Full Adder Structural
// Module Name: Full_Adder_Structural
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


module Full_Adder_Structural(
    c_out,      // carry out
    s,          // sum
    a,          // a
    b,          // b
    c_in        // carry in
    );
    
    output c_out;
    output s;
    input a;
    input b;
    input c_in;
    
    xor(w1, a, b);
    and(w2, t1, c_in);
    and(w3, a, b);
    
    xor(s, a, b, c_in);
    or(c_out, w2, w3);
endmodule
