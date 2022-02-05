`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Half Subtractor Dataflow
// Module Name: Half_Subtractor_Dataflow
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


module Half_Subtractor_Dataflow(
    br, 
    d,
    a, 
    b
    );
    
    output br;
    output d;
    input a;
    input b;
    
    assign d = a ^ b;
    assign br = ~a & b;
endmodule
