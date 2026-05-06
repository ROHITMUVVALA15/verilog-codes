`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2026 22:14:27
// Design Name: 
// Module Name: tb_half_adder_behav
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


 module tb_half_adder_behav();
reg a;
reg b;
wire diff;
wire borrow;
half_subtractor_behav uut(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial begin
$monitor("At time=%0t ,a=%b,b=%b,diff=%b,borrow=%b",$time,a,b,diff,borrow);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end
endmodule


