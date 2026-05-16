`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 11:12:11
// Design Name: 
// Module Name: gated_sr_latch
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


module gated_sr_latch(
input s,
input r,
input en,
output reg q,
output reg q_bar
);
always@(*)
begin
if(en)
begin
case({s,r})
2'b00:begin
q=q;
q_bar=q_bar;
end
2'b01:
begin
q=1'b0;
q_bar=1'b1;
end
2'b10:
begin
q=1'b1;
q_bar=1'b0;
end
2'b11:begin
q=1'b1;
q_bar=1'b1;
end
endcase
end
end
endmodule

