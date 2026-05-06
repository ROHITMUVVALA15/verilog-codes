`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2026 22:28:35
// Design Name: 
// Module Name: tb_full_subtractor
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


module tb_full_subtractor();
reg a;
reg b;
reg bin;
wire diff;
wire borrow;
full_subtractor uut(.a(a),.b(b),.bin(bin),.diff(diff),.borrow(borrow));
initial begin
$monitor("At time=%0t,a=%b,b=%b,bin=%b,diff=%b,borrow=%b",$time,a,b,bin,diff,borrow);
a=0;b=0;bin=0;#10;
a=0;b=0;bin=1;#10;
a=0;b=1;bin=0;#10;
a=0;b=1;bin=1;#10;
a=1;b=0;bin=0;#10;
a=1;b=0;bin=1;#10;
a=1;b=1;bin=0;#10;
a=1;b=1;bin=1;#10;
end
endmodule
