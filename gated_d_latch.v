`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 12:00:57
// Design Name: 
// Module Name: gated_d_latch
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


module gated_d_latch(
input d,
input en,
output reg q,
output q_bar
);
assign q_bar=~q;
always@(d or en)
begin
if(en)
begin
q=d;
end
end
endmodule

