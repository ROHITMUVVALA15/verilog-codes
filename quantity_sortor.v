`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 10:54:42
// Design Name: 
// Module Name: quantity_sortor
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


module quantity_sortor(
input wire [3:0]x,
input wire[3:0]y,
output wire [3:0]max,
output wire [3:0]min
);
 
wire xgty,xlty;
assign xlty=(x<y);
assign xgty=(x>y);
assign min=xlty?x:y;
assign max=xgty?x:y;
endmodule

