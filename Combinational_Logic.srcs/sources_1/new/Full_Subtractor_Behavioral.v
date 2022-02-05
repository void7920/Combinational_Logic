`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Full Subtractor Behavioral
// Module Name: Full_Subtractor_Behavioral
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


module Full_Subtractor_Behavioral(
    br_out,     // borrow out
    d,          // difference
    a,          // a
    b,          // b
    br_in       // borrow in
    );
   
    output reg br_out;
    output reg d;
    input a;
    input b;
    input br_in;
    
    always@(*)
    begin
        case({a, b, br_in})
            3'b000:
                begin
                    d = 1'b0;
                    br_out = 1'b0;
                end
            3'b001:
                begin
                    d = 1'b1;
                    br_out = 1'b1;
                end
            3'b010:
                begin
                    d = 1'b1;
                    br_out = 1'b1;
                end
            3'b011:
                begin
                    d = 1'b0;
                    br_out =1'b1;
                end 
            3'b100:
                begin
                    d = 1'b1;
                    br_out = 1'b0;
                end
            3'b101:
                begin
                    d = 1'b0;
                    br_out = 1'b0;
                end
            3'b110:
                begin
                    d = 1'b0;
                    br_out = 1'b0;
                end
            3'b111:
                begin
                    d = 1'b1;
                    br_out = 1'b1;
                end
        endcase
    end
endmodule
