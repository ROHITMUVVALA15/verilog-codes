`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 10:44:26
// Design Name: 
// Module Name: rca_4bit
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


module full_adder(
input a,
input b,
input cin,
output sum,
output cout
);
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);
endmodule
module rca_4bit(
input [3:0]a,b,
input cin,
output cout,
output [3:0]sum
);
wire c1,c2,c3;

full_adder f0(a[0],b[0],cin,sum[0],c1);
full_adder f1(a[1],b[1],c1,sum[1],c2);
full_adder f2(a[2],b[2],c2,sum[2],c3);
full_adder f3(a[3],b[3],c3,sum[3],cout);
endmodule

