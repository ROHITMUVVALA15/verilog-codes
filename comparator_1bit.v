`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 11:12:29
// Design Name: 
// Module Name: comparator_1bit
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


module comparator_1bit(
input wire a,
input wire b,
output wire lt,
output wire gt,
output wire eq
);
assign lt=(~a)&b;
assign gt=a&(~b);
assign eq=~(lt|gt);
endmodule

