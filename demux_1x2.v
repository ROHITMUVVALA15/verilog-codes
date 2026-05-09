`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2026 21:13:18
// Design Name: 
// Module Name: demux_1x2
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


module demux_1x2(
input in,
input sel,
output reg y0,y1);
always@(*)
begin
y0=1'b0;
y1=1'b0;
case(sel)
1'b0:y0=in;
1'b1:y1=in;
default:{y1,y0}=2'b00;
endcase
end
endmodule

