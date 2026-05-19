`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2026 10:52:54
// Design Name: 
// Module Name: tb_d_flipflop_from_sr
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


module tb_d_flipflop_from_sr(

    );
    reg clk;
    reg d;
    wire q;
    wire q_bar;
    d_flipflop_from_sr dut(.clk(clk),.d(d),.q(q),.q_bar(q_bar));
    
initial clk=0;
always #5 clk=~clk;
initial begin
$monitor("At time=%0t,d=%b,q=%b,q_bar=%b",$time,d,q,q_bar);
d=0;#10;
d=1;#10;
d=1;#10;
d=0;#10;
$finish;
end
endmodule
