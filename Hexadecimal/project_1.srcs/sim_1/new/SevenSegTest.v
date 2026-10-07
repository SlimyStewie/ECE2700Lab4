`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2026 12:12:50 PM
// Design Name: 
// Module Name: SevenSegTest
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


module SevenSegTest;
//Inputs
    reg [7:0] sw;
    reg       clk;
    
    //Outputs
    wire [6:0] seg;
    wire [3:0] an;
    
    Top7seg DUT(
        .seg(seg),
        .an(an),
        .sw(sw)
    );
    
    initial begin
        sw = 0;
        clk = 0;
        
        #100;
        forever #10 clk = ~clk;
    end
    
    always @(posedge clk) begin
        if (sw >= 9)
            sw <= 0;
        else
            sw <= sw + 1;
    end
    
endmodule