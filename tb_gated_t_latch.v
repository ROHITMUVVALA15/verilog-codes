`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 12:15:47
// Design Name: 
// Module Name: tb_gated_t_latch
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


module tb_gated_t_latch();
reg t;
reg en;
wire q;
wire q_bar;
gated_t_latch dut(.t(t),.en(en),.q(q),.q_bar(q_bar));
initial begin
force dut.q = 0; 
        #5; 
        release dut.q;
$monitor("At time=%0t,t=%b,en=%b,q=%b,q_bar=%b",$time,t,en,q,q_bar);
en=0;t=1;#10;
en=1;t=0;#10;
en=1;t=1;#10;
en=1;t=1;#10;
en=0;t=1;#10;
$finish;
end
endmodule
