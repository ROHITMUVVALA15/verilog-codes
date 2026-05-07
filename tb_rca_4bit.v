`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 10:46:05
// Design Name: 
// Module Name: tb_rca_4bit
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


module tb_rca_4bit();
reg [3:0]a,b;
reg cin;
wire cout;
wire [3:0]sum;
 rca_4bit uut (.a(a),.b(b),.cin(cin),.cout(cout),.sum(sum));
initial begin
$monitor("At time=%0t,a=%b,b=%b,cin=%b,s=%d,cout=%b",$time,a,b,cin,sum,cout);

cin=1;a=4'b0000;b=4'b1000;#10;
cin=1;a=4'b0001;b=4'b1010;#10;
cin=0;a=4'b1010;b=4'b1111;#10;
cin=0;a=4'b1000;b=4'b1100;#10;
$finish;
end
endmodule

