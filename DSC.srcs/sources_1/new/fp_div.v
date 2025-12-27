`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2025 09:50:20 PM
// Design Name: 
// Module Name: fp_div
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


module fp_div (
    input  wire        aclk,
    input  wire [31:0] a_data,
    input  wire [31:0] b_data,
    input  wire        start,          // pulse to start operation
    output wire [31:0] result,
    output wire        result_valid
);

    // AXI-Stream handshake signals
    reg s_axis_a_tvalid_reg = 0;
    reg s_axis_b_tvalid_reg = 0;

    wire s_axis_a_tready;
    wire s_axis_b_tready;

    wire m_axis_result_tvalid;
    wire [31:0] m_axis_result_tdata;

    // Always ready to accept output
    assign m_axis_result_tready = 1'b1;

    assign result       = m_axis_result_tdata;
    assign result_valid = m_axis_result_tvalid;

    //---------------------------------------------------------
    // tvalid Generation
    //---------------------------------------------------------
    always @(posedge aclk) begin
        if (start) begin
            s_axis_a_tvalid_reg <= 1'b1;
            s_axis_b_tvalid_reg <= 1'b1;
        end
        else if (s_axis_a_tready) begin
            s_axis_a_tvalid_reg <= 1'b0;
            s_axis_b_tvalid_reg <= 1'b0;
        end
    end

    //---------------------------------------------------------
    // Floating Point IP Instantiation
    //---------------------------------------------------------
    floating_point_3 fp_unit (
        .aclk(aclk),
        
        .s_axis_a_tvalid(s_axis_a_tvalid_reg),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tdata(a_data),

        .s_axis_b_tvalid(s_axis_b_tvalid_reg),
        .s_axis_b_tready(s_axis_b_tready),
        .s_axis_b_tdata(b_data),

        .m_axis_result_tvalid(m_axis_result_tvalid),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tdata(m_axis_result_tdata)
    );

endmodule
