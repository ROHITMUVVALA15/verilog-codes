`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2026 10:54:39
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
input [3:0]y,
output reg[1:0]a,
output reg v
);
always@(*)
begin
v=1'b1;
casex(y)
4'b1xxx:a=2'b11;
4'b01xx:a=2'b10;
4'b001x:a=2'b01;
4'b0001:a=2'b00;
default:begin
a=2'bxx;
v=1'b0;
end
endcase
end
endmodule

