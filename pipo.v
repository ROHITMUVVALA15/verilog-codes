`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2026 10:50:02
// Design Name: 
// Module Name: pipo
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


module pipo(
input clk,
input rst,
input load,
input [3:0]parallel_in,
output reg[3:0]parallel_out
    );
    always@(posedge clk or posedge rst)
    begin
    if(rst)
    begin
    parallel_out<=4'b0000;
    end
    else
    if(load)
    begin
    parallel_out<=parallel_in;
    end
    end
   
endmodule
