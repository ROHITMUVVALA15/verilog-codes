`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 11:14:16
// Design Name: 
// Module Name: tb_gated_sr_latch
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


module tb_gated_sr_latch();
reg s;
reg r;
reg en;
wire q;
wire q_bar;

gated_sr_latch dut(.s(s),.r(r),.en(en),.q(q),.q_bar(q_bar));

initial begin
$monitor("At time=%0t,s=%b,r=%b,q=%b,q_bar=%b",$time,s,r,q,q_bar);
en=1;s=0;r=1;#10;
en=0;s=1;r=1;#10;
en=1;s=1;r=0;#10;
en=1;s=0;r=0;#10;
en=1;s=1;r=1;#10;
$finish;
end
endmodule

