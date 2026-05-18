`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 22:18:48
// Design Name: 
// Module Name: t_ff
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


module t_ff(
input clk,
input rst,
input t,
output reg q,
output q_bar
    );
    assign q_bar=~q;
    always@(posedge clk or posedge rst)
    begin
    if(rst)
    begin
    q<=1'b0;
    end
    else
    begin
    if(t)
    begin
    q<=~q;
    end
    else
    begin
    q<=q;
    end
    end
    end
endmodule
