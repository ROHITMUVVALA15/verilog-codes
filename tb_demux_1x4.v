`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 10:47:58
// Design Name: 
// Module Name: tb_demux_1x4
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


module tb_demux_1x4();
reg in;
reg [1:0]sel;
wire [3:0]y;

demux_1x4 dut(.in(in),.sel(sel),.y(y));
initial begin
$monitor("At time=%0t,in=%b,sel=%b,y=%b",$time,in,sel,y);

in=1;
sel=2'b00;#10;
sel=2'b01;#10;
sel=2'b10;#10;
sel=2'b11;#10;
in=0;
sel=2'b10;#10;
$finish;
end
endmodule

