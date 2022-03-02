`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Full Subtractor Structural
// Module Name: Full_Subtractor_Structural
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


module Full_Subtractor_Structural(
    br_out,     // borrow out
    d,          // difference
    a,          // a
    b,          // b
    br_in       // borrow in
    );
   
    output br_out;
    output d;
    input a;
    input b;
    input br_in;
        
    wire w1, w2, w3;
    
    xor(w1, a, b);
    and(w2, ~w1, br_in);
    and(w3, ~a, b);
    
    xor(d, a, b, br_in);
    or(br_out, w2, w3);
endmodule
