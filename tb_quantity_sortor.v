`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 10:55:47
// Design Name: 
// Module Name: tb_quantity_sortor
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


module tb_quantity_sortor();
reg [3:0]x;
reg [3:0]y;
wire [3:0]max;
wire [3:0]min;

quantity_sortor dut(.x(x),.y(y),.max(max),.min(min));
initial begin
$monitor("At time=%t,x=%b,y=%b,max=%b,min=%b",$time,x,y,max,min);
x=4'd12;y=4'd10;#10;
x=4'd01;y=4'd22;#10;
x=4'd7;y=4'd7;#10;
x=4'd03;y=4'd8;#10;
$finish;
end
endmodule
