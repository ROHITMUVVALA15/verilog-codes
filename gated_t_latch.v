`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 12:14:39
// Design Name: 
// Module Name: gated_t_latch
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


module gated_t_latch(
input t,
input en,
output reg q,
output q_bar
);
assign q_bar=~q;
always@(*)
begin
if(en)
begin
if(t)
begin
q=~q;
end
else
begin
q=q;
end
end
end
endmodule

