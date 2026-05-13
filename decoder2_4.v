`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2026 11:16:38
// Design Name: 
// Module Name: decoder2_4
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


module decoder2_4(
input [1:0]a,
input en,
output reg [3:0]y
);
always@(*)
begin
if(!en)
begin
y=4'b0000;
end
else
begin
case(a)
2'b00:y=4'b0001;
2'b01:y=4'b0010;
2'b10:y=4'b0100;
2'b11:y=4'b1000;
endcase
end
end
endmodule
