`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Full Adder Dataflow
// Module Name: Full_Adder_Dataflow
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


module Full_Adder_Dataflow(
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
    
    assign s = (a ^ b ^ c_in);
    assign c_out = (a & b) | ((a ^ b) & c_in);
endmodule
