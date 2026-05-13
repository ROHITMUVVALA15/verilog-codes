`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2026 11:17:39
// Design Name: 
// Module Name: tb_decoder2_4
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


module tb_decoder2_4();
reg [1:0]a;
reg en;
wire [3:0]y;
decoder2_4 dut (.a(a),.en(en),.y(y));
initial begin
$monitor("At time=%0t,a=%b,en=%b,y=%b",$time,a,en,y);
en=0;a=2'bxx;#10;
en=1;
a=2'b00;#10;
a=2'b01;#10;
a=2'b10;#10;
a=2'b11;#10;
$finish;
end
endmodule

