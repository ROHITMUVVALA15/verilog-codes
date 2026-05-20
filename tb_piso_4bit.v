`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2026 11:24:37
// Design Name: 
// Module Name: tb_piso_4bit
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


module tb_piso_4bit(

    );
    reg clk;
    reg rst;
    reg load;
    reg [3:0]parallel_in;
    wire serial_out;
    piso_4bit dut(.clk(clk),.rst(rst),.load(load),.parallel_in(parallel_in),.serial_out(serial_out));
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    rst=1;load=0;parallel_in=4'b0000;
    #10 rst=0;
    #10 load=1;parallel_in=4'b1010;
    #10 load=0;
    #50;
    #10 load=1;parallel_in=4'b0011;
    #10 load=0;
    #50;
    $finish;
    end
    initial begin
    $monitor("At time=%0t,load=%b,parallel_in=%b,serial_out=%b",$time,load,parallel_in,serial_out);
    end
    
endmodule
