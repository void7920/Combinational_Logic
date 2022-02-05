`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 22:55:56
// Design Name: Comparator Dataflow
// Module Name: Comparator_Dataflow
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Comparator_Dataflow #(parameter size = 4)(
    eq,
    greater,
    less,
    a,
    b
    );
    
    output eq;
    output less;
    output greater;
    
    assign eq = (a == b);
    assign greater = (a > b);
    assign less = (a < b);
endmodule
