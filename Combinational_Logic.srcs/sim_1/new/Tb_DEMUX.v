`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi 
// 
// Create Date: 2022/02/06 00:58:30
// Design Name: Testbench Demultiplexer
// Module Name: Tb_DEMUX
// Project Name: 
// Target Devices: Simulation
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


module Tb_DEMUX();
    reg Y;
    reg [1:0]S;
    wire [3:0]A0;
    wire [3:0]A1;
    wire [3:0]A2;
    
    Demultiplexer_1x4_Behavioral sim_DEMUX0(A0[0], A0[1], A0[2], A0[3], Y, S);
    Demultiplexer_1x4_Dataflow sim_DEMUX1(A1[0], A1[1], A1[2], A1[3], Y, S);
    Demultiplexer_1x4_Structural sim_DEMUX2(A2[0], A2[1], A2[2], A2[3], Y, S);
    
    initial
    begin
        Y=0;
        S=0;
    end
    
    initial
    begin
        #100 Y=0; S=2'b01;
        #100 Y=0; S=2'b10;
        #100 Y=0; S=2'b11;
        #100 Y=1; S=2'b00;
        #100 Y=1; S=2'b01;
        #100 Y=1; S=2'b10;
        #100 Y=1; S=2'b11;
    end
endmodule
