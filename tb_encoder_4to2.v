`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 11:14:46
// Design Name: 
// Module Name: tb_encoder_4to2
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


module tb_encoder_4to2();
reg y0,y1,y2,y3;
wire a0,a1;
encoder_4to2 dut (.y0(y0),.y1(y1),.y2(y2),.y3(y3),.a0(a0),.a1(a1));
initial begin
$monitor("At time=%0t,y3=%b,y2=%b,y1=%b,y0=%b,a1=%b,a0=%b",$time,y3,y2,y1,y0,a1,a0);
y3=0;y2=0;y1=0;y0=1;#10;
y3=0;y2=0;y1=1;y0=0;#10;
y3=0;y2=1;y1=0;y0=0;#10;
y3=1;y2=0;y1=0;y0=0;#10;
$finish;
end
endmodule
