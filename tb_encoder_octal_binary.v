`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 11:34:58
// Design Name: 
// Module Name: tb_encoder_octal_binary
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


module tb_encoder_octal_binary();
reg [7:0]y;
wire[2:0]a;
encoder_octal_binary dut(.y(y),.a(a));
initial begin 
$monitor("At time=%0t,a=%b,y=%b",$time,a,y);
y=8'b00000001;#10;
y=8'b00000010;#10;
y=8'b00000100;#10;
y=8'b00001000;#10;
y=8'b00010000;#10;
y=8'b00100000;#10;
y=8'b01000000;#10;
y=8'b10000000;#10;
$finish;
end
endmodule
