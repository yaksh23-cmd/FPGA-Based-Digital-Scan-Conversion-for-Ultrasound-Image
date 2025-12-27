`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2025 12:15:04 AM
// Design Name: 
// Module Name: assymetry_calc
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


module assymetry_calc(
    input  wire        clk,
    input  wire        rstn,
    
    input  wire [7:0]  c_jm6,   // c(i, j-6)
    input  wire [7:0]  c_jm3,   // c(i, j-3)
    input  wire [7:0]  c_jp6,   // c(i, j+6)
    input  wire [7:0]  c_jp3,   // c(i, j+3)

    input  wire        in_valid,
    output reg         out_valid,
    output reg[31:0]  A_out     // final asymmetry float
    );
    wire [31:0] f_jp3,f_jp6,f_jm6,f_jm3;
    wire out_valid_f;
    // Stage 0: Convert 8-bit integers to float32
    fix_to_float dut (
        .clk(clk),
        .rstn(rstn),

        .c_jm6(c_jm6),
        .c_jm3(c_jm3),
        .c_jp6(c_jp6),
        .c_jp3(c_jp3),

        .in_valid(in_valid),
        .out_valid(out_valid_f),
        .f_jp3(f_jp3),
        .f_jp6(f_jp6),
        .f_jm6(f_jm6),
        .f_jm3(f_jm3)
    );
    
    // Stage 1: diff1 = f_jp3 - f_jm6
    // diff2 = f_jp6 - f_jm3
    wire result_valid1 ,result_valid2;
    wire [31:0] result_data1,result_data2;
    float_sub SUB1 (
        .aclk(clk),
        .aresetn(rstn),
        .a_valid(out_valid_f),
        .b_valid(out_valid_f),
        .a_data(f_jp3),
        .b_data(f_jm6),
        .operation(8'h02),
        .result_valid(result_valid1),
        .result_ready(1'b1),
        .result_data(result_data1)
    );
    
    
    float_sub SUB2 (
        .aclk(clk),
        .aresetn(rstn),
        .a_valid(out_valid_f),
        .b_valid(out_valid_f ),
        .a_data(f_jp6),
        .b_data(f_jm3),
        .operation(8'h02),
        .result_valid(result_valid2),
        .result_ready(1'b1),
        .result_data(result_data2)
    );
    
     // Stage 2: abs1 = abs(diff1), abs2 = abs(diff2)
     
     wire out_valid1 ,out_valid2;
     wire [31:0] out_float1,out_float2;
     fp_absolute ABS1 (
        .clk(clk),
        .rstn(rstn),
        .start(result_valid1),
        .in_float(result_data1),
        .out_float(out_float1),
        .out_valid(out_valid1)
    );
    
    fp_absolute ABS2 (
        .clk(clk),
        .rstn(rstn),
        .start(result_valid2),
        .in_float(result_data2),
        .out_float(out_float2),
        .out_valid(out_valid2)
    );
    
    //// Stage 3: numerator = abs1 - abs2
    wire [31:0]numer;
    wire abs_sub;
    float_sub SUB3 (
        .aclk(clk),
        .aresetn(rstn),
        .a_valid(out_valid1),
        .b_valid(out_valid2),
        .a_data(out_float1),
        .b_data(out_float2),
        .operation(8'h02),
        .result_valid(abs_sub),
        .result_ready(1'b1),
        .result_data(numer)
    );
    
    
     // Stage 4: A = numer / 255.0
     wire [31:0]result;
     wire a_result;
     fp_div DIV (
        .aclk(aclk),
        .a_data(numer),
        .b_data(32'h437F0000),
        .start(abs_sub),
        .result(result),
        .result_valid(a_result)
    );
    
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            A_out    <= 32'd0;
            out_valid <= 1'b0;
        end else begin
            out_valid <= a_result;
            if(a_result)
                A_out <= result;
        end
    end
    
endmodule