`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2026 04:04:53 PM
// Design Name: 
// Module Name: Testcase_Combinational
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


module Testcase_Combinational;

reg[3:0] x;
reg clk;

wire a,b,c,d,e,f,g;
reg[6:0] display;

Combinational DUT (
.x3(x[3]),
.x2(x[2]),
.x1(x[1]),
.x0(x[0]),
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g)
);

initial 
    begin
    x= 4'b0000;
    clk =0;

    #100;
    forever #10 clk = ~clk;
end

always @(posedge clk)
begin
    if (x >= 4'd9)
        x <= 4'd0;
    else
        x <= x + 1;
        
    
end


endmodule
