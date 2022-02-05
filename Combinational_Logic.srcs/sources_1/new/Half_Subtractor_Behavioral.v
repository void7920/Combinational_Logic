`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/05 21:32:16
// Design Name: Half Subtractor Behavioral
// Module Name: Half_Subtractor_Behavioral
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


module Half_Subtractor_Behavioral(
    br,     // borrow
    d,      // difference
    a,      // a
    b       // b
    );
    
    output reg br;
    output reg d;
    input a;
    input b;
    
    always@(*)
    begin
        case({a, b})
            2'b00 : 
                begin
                    br = 1'b0;
                    d = 1'b0;        
                end
            
            2'b01 : 
                begin
                    br = 1'b1;
                    d = 1'b1;        
                end
            
            2'b10 : 
                begin
                    br = 1'b0;
                    d = 1'b1;       
                end
            
            2'b11 : 
                begin
                    br = 1'b0;
                    d = 1'b0;        
                end
        endcase
    end
endmodule
