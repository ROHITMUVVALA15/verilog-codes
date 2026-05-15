`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 21:37:25
// Design Name: 
// Module Name: tb_sr_latch_nor
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


module tb_sr_latch_nor();
reg s;
reg r;
wire q;
wire q_bar;
sr_latch_nor dut(.s(s),.r(r),.q(q),.q_bar(q_bar));
initial begin
$monitor("At time=%0t,r=%b,s=%b,q=%b,q_bar=%b",$time,r,s,q,q_bar);
s=0;r=1;#10;
s=1;r=0;#10;
s=0;r=0;#10;
s=0;r=1;
#10;
s=1;r=0;#10;
$finish;
end
endmodule

