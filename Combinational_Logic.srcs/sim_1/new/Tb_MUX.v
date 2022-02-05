`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 00:58:30
// Design Name: Testbench Multiplexer
// Module Name: Tb_MUX
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


module Tb_MUX();
    reg [3:0]I;
    reg [1:0]S;
    wire Y0;
    wire Y1;
    wire Y2;
    
    Multiplexer_4x1_Behavioral sim_MUX0(Y0, I[0], I[1], I[2], I[3], S);
    Multiplexer_4x1_Dataflow sim_MUX1(Y1, I[0], I[1], I[2], I[3], S);
    Multiplexer_4x1_Structural sim_MUX2(Y2, I[0], I[1], I[2], I[3], S);
    
    initial
    begin
        I = 4'b0000;
        S = 2'b00;
    end
    
    initial
    begin
        #50 I=4'b0000; S=2'b01;
        #50 I=4'b0000; S=2'b10;
        #50 I=4'b0000; S=2'b11;
        #50 I=4'b0001; S=2'b00;
        #50 I=4'b0001; S=2'b01;
        #50 I=4'b0001; S=2'b10;
        #50 I=4'b0001; S=2'b11;
        #50 I=4'b0010; S=2'b00;
        #50 I=4'b0010; S=2'b01;
        #50 I=4'b0010; S=2'b10;
        #50 I=4'b0010; S=2'b11;
        #50 I=4'b0100; S=2'b00;
        #50 I=4'b0101; S=2'b01;
        #50 I=4'b0110; S=2'b10;
        #50 I=4'b0111; S=2'b11;
        #50 I=4'b1000; S=2'b00;
        #50 I=4'b1001; S=2'b01;
        #50 I=4'b1010; S=2'b10;
        #50 I=4'b1011; S=2'b11;
    end
endmodule
