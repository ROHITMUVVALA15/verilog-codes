`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2026 22:22:26
// Design Name: 
// Module Name: tb_mux_4x1
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


module tb_mux_4x1();
reg [3:0]i;
reg [1:0]sel;
wire y;
mux_4x1 uut(.i(i),.sel(sel),.y(y));
initial begin
$monitor("At time=%t,i=%b,sel=%b,y=%b",$time,i,sel,y);
i=4'b1011;
sel=2'b00;#10;
sel=2'b01;#10;
sel=2'b10;#10;
sel=2'b11;#10;
i=4'b1000;
sel=2'b10;#10;
$finish;
end
endmodule
