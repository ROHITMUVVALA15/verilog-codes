`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 11:13:30
// Design Name: 
// Module Name: tb_comparator_1bit
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


module tb_comparator_1bit();
reg a;
reg b;
wire lt;
wire gt;
wire eq;
 comparator_1bit dut(.a(a),.b(b),.lt(lt),.gt(gt),.eq(eq));

initial begin
$monitor("At time=%t,a=%b=b=%b,lt=%b,gt=%b,eq=%b",$time,a,b,lt,gt,eq);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end
endmodule

