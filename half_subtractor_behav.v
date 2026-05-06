`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2026 22:13:07
// Design Name: 
// Module Name: half_subtractor_behav
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


module half_subtractor_behav(input a,
input b,
output reg diff,
output reg borrow
);
always@(*)
begin
{borrow,diff}=a-b;
end
endmodule
