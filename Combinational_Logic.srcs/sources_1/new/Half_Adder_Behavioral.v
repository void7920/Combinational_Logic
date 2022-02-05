`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Half Adder Behavioral
// Module Name: Half_Adder_Behavioral
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


module Half_Adder_Behavioral(
    c,      // carry
    s,      // sum
    a,      // a
    b       // b
    );
    
    output reg c;
    output reg s;
    input a;
    input b;
    
    always@(*)
    begin
        {c, s} = a + b;
        
//        case({a, b})
//            2'b00 : 
//                begin
//                    c = 1'b0;
//                    s = 1'b0;        
//                end
            
//            2'b01 : 
//                begin
//                    c = 1'b0;
//                    s = 1'b1;        
//                end
            
//            2'b10 : 
//                begin
//                    c = 1'b0;
//                    s = 1'b1;        
//                end
            
//            2'b11 : 
//                begin
//                    c = 1'b1;
//                    s = 1'b0;        
//                end
//        endcase
    end
endmodule
