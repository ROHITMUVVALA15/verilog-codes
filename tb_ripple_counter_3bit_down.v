`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2026 12:05:14
// Design Name: 
// Module Name: tb_ripple_counter_3bit_down
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


module tb_ripple_counter_3bit_down(

    );
    reg clk;
    reg rst;
    wire [2:0]q;
    ripple_counter_3bit_down dut(.clk(clk),.rst(rst),.q(q));
    always #5 clk=~clk;
    initial begin
    clk=0;
    rst=1;
    #15 rst=0;
    #160;
    $finish;
    end
    initial begin
    $monitor("At time=%0t,rst=%b,count(%b)=%d",$time,rst,q,q);
    end
    endmodule

