`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2026 10:58:01
// Design Name: 
// Module Name: tb_pipo
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


module tb_pipo(

    );
    reg clk;
    reg rst;
    reg load;
    reg [3:0]parallel_in;
    wire [3:0]parallel_out;
    
    pipo dut(.clk(clk),.rst(rst),.load(load),.parallel_in(parallel_in),.parallel_out(parallel_out));
    initial begin 
    clk=0;
    forever #5 clk=~clk;
   end
   initial begin
   rst=1;load=0;parallel_in=4'b0000;
   
   #10;
   rst=0;
   load=1;parallel_in=4'b1101;
   #10 load=0;
   #20;
   load=1;parallel_in=4'b1001;
   #10 load=0;
   #20;
   $finish;
   end
   initial begin
   $monitor("At time=%0t,load=%b,parallel_in=%b,parallel_out=%b",$time,load,parallel_in,parallel_out);
   end
endmodule
