`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 11:33:57
// Design Name: 
// Module Name: encoder_octal_binary
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


module encoder_octal_binary(
input [7:0]y,
output[2:0]a
);
assign a[2]=(y[4]|y[5]|y[6]|y[7]);
assign a[1]=(y[2]|y[3]|y[6]|y[7]);
assign a[0]=(y[1]|y[3]|y[5]|y[7]);
endmodule

