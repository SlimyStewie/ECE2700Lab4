`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2026 11:27:48 AM
// Design Name: 
// Module Name: Assign7Seg
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


module Assign7Seg(
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
    
    
assign a = ~x1&x0&((~x3&~x2)+(x3&x2))+ ~x3 & x2 & ~x1 & ~x0 + x3 & ~x2 & x1 & x0;
assign b = ~x1 & ~x0 + ~x3 & ~x2 + x1 & x0 &~(x3&~x2)+ x1 & ~x0 & ~(~x3 & x2)+x3&~x2&~x1&x0;
assign c = ~x3 & x2 + ~x1 & x0 + ~x3 & ~x2 & ~(x1 & x0) + x3 & ~x2 &(x1 + x0);
assign d = x1&~x0 & ~(x3 & ~x2) + x3&~x2 & ~(x1&~x0) + ~x1&~x0&~(~x3&x2)+~x1&x0&(x3+x2)+~x3&~x2&x1&x0;
assign e = ~(~x1&x0)+~x1&~x2&~(~x3&x2)+x1&x0&x3+x1&~x0;
assign f = (~x1 & ~x0) | x3&~x2+x1&x0&x3+x1&~x0&(x3+x2)+~x3&x2&~x1&x0;
assign g =  x3&~x2+x3&x2&(x1+x0)+~x3&x2&~(x1&x0)+~x3&~x2&x1;
    
    
    
endmodule
