`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 11:13:34
// Design Name: 
// Module Name: encoder_4to2
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


module encoder_4to2(
input y0,y1,y2,y3,
output a0,a1
);
assign a1=y2|y3;
assign a0=y3|y1;
endmodule

