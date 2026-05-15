`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 10:56:18
// Design Name: 
// Module Name: nand_latch
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


module nand_latch(
input r,
input s,
output reg q,
output reg q_bar
);
initial begin
q=1'b0;
q_bar=1'b1;
end
always@(*)
begin
case({s,r})
2'b00:
begin
q=1'bx;
q_bar=1'bx;
end
2'b01:
begin
q=1'b1;
q_bar=1'b0;
end
2'b10:begin
q=1'b0;
q_bar=1'b1;
end
2'b11:begin
end
endcase
end
endmodule

