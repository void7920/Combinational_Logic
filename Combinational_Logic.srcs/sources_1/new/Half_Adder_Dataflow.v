`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Half Adder Dataflow
// Module Name: Half_Adder_Dataflow
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


module Half_Adder_Dataflow(
    c,      // carry
    s,      // sum
    a,      // a
    b       // b
    );
    
    output c;
    output s;
    input a;
    input b;
    
    assign s = a ^ b;
    assign c = a & b;
endmodule
