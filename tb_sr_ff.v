`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 10:59:22
// Design Name: 
// Module Name: tb_sr_ff
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


module tb_sr_ff();
reg clk;
reg rst;
reg s;
reg r;
wire q;
wire q_bar;

sr_ff dut (.clk(clk),.rst(rst),.s(s),.r(r),.q(q),.q_bar(q_bar));
always #5 clk=~clk;
initial begin
clk=0;
rst=1;
s=0;
r=0;
$monitor("At time=0%t,s=%b,r=%b,q=%b,q_bar=%b",$time,s,r,q,q_bar);
#10 rst=0;
s=0;r=1;#10;
s=0;r=0;#10;
s=1;r=0;#10;
s=0;r=0;#10;
s=1;r=0;#10;
s=1;r=1;#10;
$finish;
end
endmodule


