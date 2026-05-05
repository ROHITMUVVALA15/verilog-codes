`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2026 10:43:42
// Design Name: 
// Module Name: tb_half_adder_behavioural
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


module tb_half_adder_behavioural(

    );
    reg a,b;
    wire sum,carry;
    half_adder_behavioural uut(.a(a),.b(b),.sum(sum),.carry(carry));
    initial begin
    $monitor("At time=%0t a=%b,b=%b,sum=%b,carry=%b",$time,a,b,sum,carry);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    end
endmodule
