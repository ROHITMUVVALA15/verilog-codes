`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 11:46:56
// Design Name: 
// Module Name: tb_gated_jk_latch
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


module tb_gated_jk_latch();
reg j;
reg k;
reg en;
wire q;
wire q_bar;
gated_jk_latch dut(.j(j),.k(k),.en(en),.q(q),.q_bar(q_bar));
initial begin
$monitor("At time=%0t,j=%b,k=%b,en=%b,q=%b,q_bar=%b",$time,j,k,en,q,q_bar);
en=1;j=0;k=1;#10;
en=0;j=1;k=1;#10;
en=1;j=1;k=0;#10;
en=1;j=0;k=0;#10;
en=1;j=1;k=1;#10;
en=0;j=0;k=0;#10;
$finish;
end
endmodule
