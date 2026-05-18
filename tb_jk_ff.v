`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 21:59:28
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff();
reg clk;
reg rst;
reg j;
reg k;
wire q;
wire q_bar;
jk_ff dut (.clk(clk),.rst(rst),.j(j),.k(k),.q(q),.q_bar(q_bar));
always #5clk=~clk;
initial begin
clk=0;
rst=0;
j=0;
k=0;
$monitor("At time=%0t,j=%b,k=%b,q=%b,q_bar=%b",$time,j,k,q,q_bar);
#10 rst=1;
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=0;k=0;#10;
j=1;k=1;#10;
j=0;k=0;#10;
$finish;
end

endmodule