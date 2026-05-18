`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 22:22:33
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff();
reg clk;
reg rst;
reg t;
wire q;
wire q_bar;
t_ff dut (.clk(clk),.rst(rst),.t(t),.q(q),.q_bar(q_bar));
initial begin
forever #5 clk=~clk;
end
initial begin

$monitor("At time=%0t,t=%b,q=%b,q_bar=%b",$time,t,q,q_bar);
clk=0;
rst=1;
t=0;
#10;
rst=0;
t=1;#10;
t=1;#10;
t=0;#10;
t=1;
#5 rst=1;
#10 rst=0;
$finish;
end
endmodule
    

