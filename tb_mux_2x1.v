`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2026 11:17:55
// Design Name: 
// Module Name: tb_mux_2x1
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


module tb_mux_2x1();
reg i0;
reg i1;
reg sel;
wire y;
mux_2x1 uut(.i0(i0),.i1(i1),.sel(sel),.y(y));
initial begin
$monitor("At time=%0t,i0=%b,i1=%b,sel=%b,y=%b",$time,i0,i1,sel,y);
i0=0;i1=1;
sel=0;#10;
sel=1;#10;
i1=0;i0=1;
sel=0;#10;
sel=1;#10;
$finish;
end
endmodule
