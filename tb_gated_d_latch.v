`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 12:02:28
// Design Name: 
// Module Name: tb_gated_d_latch
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


module tb_gated_d_latch();
reg d;
reg en;
wire q;
wire q_bar;
gated_d_latch dut(.d(d),.en(en),.q(q),.q_bar(q_bar));
initial begin
$monitor("At time=%0t,d=%b,en=%b,q=%b,q_bar=%b",$time,d,en,q,q_bar);
en=1;d=1;#10;
en=0;d=1;#10;
en=1;d=0;#10;
en=1;d=1;#10;
en=0;d=0;#10;
$finish;
end
endmodule
