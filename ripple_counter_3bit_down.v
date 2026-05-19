`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2026 12:02:48
// Design Name: 
// Module Name: ripple_counter_3bit_down
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


module ripple_counter_3bit_down(
input clk,
input rst,
output  [2:0]q
    );
    reg q0,q1,q2;
    always@(negedge clk or posedge rst)
    begin
    if(rst)
    q0<=1'b0;
    else
    q0<=~q0;
    end
    always@(posedge q0 or posedge rst)
    begin
    if(rst)
    q1<=1'b0;
    else
    q1<=~q1;
    end
    always@(posedge q1 or posedge rst)
    begin
    if(rst)
    q2<=1'b0;
    else
    q2<=~q2;
    end
    assign q={q2,q1,q0};
  
endmodule


