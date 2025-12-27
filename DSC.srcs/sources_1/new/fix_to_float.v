`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2025 04:58:04 PM
// Design Name: 
// Module Name: fix_to_float
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


module fix_to_float(
    input  wire        clk,
    input  wire        rstn,
    
    input  wire [7:0]  c_jm6,   // c(i, j-6)
    input  wire [7:0]  c_jm3,   // c(i, j-3)
    input  wire [7:0]  c_jp6,   // c(i, j+6)
    input  wire [7:0]  c_jp3,   // c(i, j+3)

    input  wire        in_valid,
    output wire         out_valid,
    output wire [31:0] f_jp3, f_jm6, f_jp6, f_jm3     // final asymmetry float
    );
     // Stage 0: Convert 8-bit integers to float32
    reg        v0 = 0;
    wire       r0_0, r0_1, r0_2, r0_3;
    wire out_valid1,out_valid2,out_valid3,out_valid4;
    reg  [31:0] d0_0, d0_1, d0_2, d0_3;
    
    assign out_valid = out_valid1 & out_valid2 & out_valid3 & out_valid4;
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            v0 <= 0;
        end else begin
            v0 <= in_valid;
            if(in_valid) begin
                d0_0 <= {24'd0, c_jp3};
                d0_1 <= {24'd0, c_jm6};
                d0_2 <= {24'd0, c_jp6};
                d0_3 <= {24'd0, c_jm3};
            end
        end
    end
    
    // 80 ns taken to produce results 
    floating_point_0 fx2fl_00( .aclk(clk), .s_axis_a_tvalid(v0), .s_axis_a_tready(),
                            .s_axis_a_tdata(d0_0), .m_axis_result_tvalid(out_valid1),
                            .m_axis_result_tready(1'b1), .m_axis_result_tdata(f_jp3) );

    floating_point_0 fx2fl_11( .aclk(clk), .s_axis_a_tvalid(v0), .s_axis_a_tready(),
                            .s_axis_a_tdata(d0_1), .m_axis_result_tvalid(out_valid2),
                            .m_axis_result_tready(1'b1), .m_axis_result_tdata(f_jm6) );

    floating_point_0 fx2fl_22( .aclk(clk), .s_axis_a_tvalid(v0), .s_axis_a_tready(),
                            .s_axis_a_tdata(d0_2), .m_axis_result_tvalid(out_valid3),
                            .m_axis_result_tready(1'b1), .m_axis_result_tdata(f_jp6) );

    floating_point_0 fx2fl_33( .aclk(clk), .s_axis_a_tvalid(v0), .s_axis_a_tready(),
                            .s_axis_a_tdata(d0_3), .m_axis_result_tvalid(out_valid4),
                            .m_axis_result_tready(1'b1), .m_axis_result_tdata(f_jm3) );
                            
     
endmodule
