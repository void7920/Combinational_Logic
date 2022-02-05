`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Full Adder Behavioral
// Module Name: Full_Adder_Behavioral
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


module Full_Adder_Behavioral(
    c_out,      // carry out
    s,          // sum
    a,          // a
    b,          // b
    c_in        // carry in
    );
    
    output reg c_out;
    output reg s;
    input a;
    input b;
    input c_in;
    
    always@(*)
    begin
        {c_out, s} = a + b + c_in;
//        case({a, b, c_in})
//            3'b000:
//                begin
//                    c_out = 1'b0;
//                    s = 1'b0;
//                end
                
//            3'b010: 
//                begin
//                    c_out = 1'b0;
//                    s = 1'b1;
//                end
                
//            3'b100: 
//                begin
//                    c_out = 1'b0;
//                    s = 1'b1;
//                end
                
//            3'b110: 
//                begin
//                    c_out = 1'b1;
//                    s = 1'b0;
//                end
                
//            3'b001: 
//                begin
//                    c_out = 1'b0;
//                    s = 1'b1;
//                end
                
//            3'b011: 
//                begin
//                    c_out = 1'b1;
//                    s = 1'b0;
//                end
                
//            3'b101: 
//                begin
//                    c_out = 1'b1;
//                    s = 1'b0;
//                end
                
//            3'b111: 
//                begin
//                    c_out = 1'b1;
//                    s = 1'b1;
//                end    
//        endcase
    end
endmodule
