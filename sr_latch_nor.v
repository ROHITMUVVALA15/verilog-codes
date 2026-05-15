`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 21:34:16
// Design Name: 
// Module Name: sr_latch_nor
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


module sr_latch_nor(
input s,
input r,
output reg q,
output reg q_bar
);
initial begin
q=0;
q_bar=1;
end
always@(*)
begin
case({s,r})
2'b01:begin
q=1'b0;
q_bar=1'b1;
end
2'b10:
begin
q=1'b1;
q_bar=1'b0;
end
2'b11:
begin
q=1'bx;
q_bar=1'bx;
end
2'b00:
begin
end
endcase
end
endmodule
