`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 10:44:00
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(
input in,
input [1:0]sel,
output  reg [3:0]y
);

always@(*)
begin
y=4'b0000;
case(sel)
2'b00:y[0]=in;
2'b01:y[1]=in;
2'b10:y[2]=in;
2'b11:y[3]=in;
default:y=4'b0000;
endcase
end
endmodule
