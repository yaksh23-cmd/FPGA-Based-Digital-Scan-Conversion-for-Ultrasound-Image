`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2025 11:58:26 PM
// Design Name: 
// Module Name: DSc_controller
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


module DSc_controller(
    input [7:0] pixel_in,
    input clk,
    input rst,
    output [7:0] o
    );
    
     reg [7:0] a,b,c,d;
     
    always@(posedge clk)begin 
      if(rst)begin
        a <= 0;
        b <= 0;
        c <= 0;
        d <= 0;
      end
      else begin 
        a <= pixel_in;
        b <= a;
        c <= b;
        d <= c;
      end
    end
endmodule
