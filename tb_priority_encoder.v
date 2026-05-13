`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2026 10:55:41
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder();
reg [3:0]y;
wire [1:0]a;
wire v;

priority_encoder dut(.y(y),.a(a),.v(v));
initial begin
$monitor("At time=%0t,y=%b,a=%b,v=%b",$time,y,a,v);

y=4'b0000;#10;
y=4'b0001;#10;
y=4'b0011;#10;
y=4'b0111;#10;
y=4'b1111;#10;
$finish;
end
endmodule
