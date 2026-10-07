`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2026 03:58:33 PM
// Design Name: 
// Module Name: 7SegTruth
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


module Combinational(
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    input x3,
    input x2,
    input x1,
    input x0
    );
    
    wire[3:0]  x;
    assign x={x3,x2,x1,x0};
    reg[6:0] display;
    assign {a,b,c,d,e,f,g}=display;
    
    
    
    
    
    
    always @(x) 
    begin
    
    case (x)
    x >= 4'd0: display <= 7'b1111111;
    x >= 4'd1: display <= 7'b0110000;
    x >= 4'd2: display <= 7'b1101101;
    x >= 4'd3: display <= 7'b1111001;
    x >= 4'd4: display <= 7'b0110011;
    x >= 4'd5: display <= 7'b1011011;
    x >= 4'd6: display <= 7'b1111111;
    x >= 4'd7: display <= 7'b1111111;
    x >= 4'd8: display <= 7'b1111111;
    x >= 4'd9: display <= 7'b1111111;
    endcase
    end
    
    
endmodule
