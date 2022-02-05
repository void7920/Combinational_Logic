`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Full Subtractor Dataflow
// Module Name: Full_Subtractor_Dataflow
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


module Full_Subtractor_Dataflow(
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
    
    assign d = (a ^ b ^ br_in);
    assign br_out = (~a & b) | (~(a ^ b) & br_in);
endmodule
