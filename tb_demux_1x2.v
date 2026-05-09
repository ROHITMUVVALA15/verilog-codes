`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2026 21:16:19
// Design Name: 
// Module Name: tb_demux_1x2
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


module tb_demux_1x2();
reg in;
reg sel;
wire y0,y1;

demux_1x2 uut(.in(in),.sel(sel),.y0(y0),.y1(y1));
initial begin
$monitor("At time=%0t,in=%b,sel=%b,y0=%b,y1=%b",$time,in,sel,y0,y1);
in=1;sel=0;#10;
in=1;sel=1;#10;
in=0;sel=1;#10;
in=0;sel=0;#10
$finish;
end
endmodule