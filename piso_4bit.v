`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2026 11:16:53
// Design Name: 
// Module Name: piso_4bit
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


module piso_4bit(
input clk,
input rst,
input load,
input [3:0]parallel_in,
output reg serial_out
    );
    reg [3:0]shift_reg;
    always@(posedge clk or posedge rst)
    begin
    if(rst)
    begin
    serial_out<=1'b0;
    shift_reg<=4'b0000;
    end
    else if(load)
    begin
    shift_reg<=parallel_in;
    end
    else
    begin
    serial_out<=shift_reg[3];
    shift_reg<={shift_reg[2:0],1'b0};
    end
  end
endmodule
