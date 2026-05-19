`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2026 11:07:38
// Design Name: 
// Module Name: jk_flipflop_from_t
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


module jk_flipflop_from_t(
input clk,
input rst,
input j,
input k,
output reg q,
output q_bar
    );
    wire t_input;
    assign q_bar=~q;
    assign t_input=(j&~q)|(k&q);
    always@(posedge clk or posedge rst)
    begin
    if(rst)
    begin
    q<=1'b0;
    end
    else begin
    if(t_input)
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
