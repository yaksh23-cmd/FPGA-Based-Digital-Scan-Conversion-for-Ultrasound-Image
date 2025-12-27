`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2025 07:10:08 PM
// Design Name: 
// Module Name: fp_absolute
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


module fp_absolute (
    input  wire        clk,
    input  wire        rstn,

    input  wire        start,        // can be LEVEL or PULSE
    input  wire [31:0] in_float,

    output wire [31:0] out_float,
    output wire        out_valid
);

    //------------------------------
    // Convert level -> 1-cycle pulse
    //------------------------------
    reg start_d;

    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            start_d <= 1'b0;
        else
            start_d <= start;
    end

    wire start_pulse = start & ~start_d;     // Rising-edge detection

    //------------------------------
    // Handshake signals
    //------------------------------
    reg        s_axis_a_tvalid;
    wire       s_axis_a_tready;
    reg [31:0] s_axis_a_tdata;

    wire       m_axis_result_tvalid;
    reg        m_axis_result_tready;
    wire [31:0] m_axis_result_tdata;

    assign out_float = m_axis_result_tdata;
    assign out_valid = m_axis_result_tvalid;

    //------------------------------
    // FPU control logic
    //------------------------------
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            s_axis_a_tvalid      <= 0;
            s_axis_a_tdata       <= 0;
            m_axis_result_tready <= 1;     // ALWAYS ready
        end else begin

            // Step 1: Start only on 1-cycle pulse
            if (start_pulse) begin
                s_axis_a_tvalid <= 1;
                s_axis_a_tdata  <= in_float;
            end

            // Step 2: When accepted, drop valid
            if (s_axis_a_tvalid && s_axis_a_tready)
                s_axis_a_tvalid <= 0;

            // Step 3: output ready always = 1 (already set)
        end
    end

    //------------------------------
    // Floating point IP core
    //------------------------------
    floating_point_2 your_instance_name (
        .s_axis_a_tvalid (s_axis_a_tvalid),         
        .s_axis_a_tready (s_axis_a_tready),         
        .s_axis_a_tdata  (s_axis_a_tdata),          

        .m_axis_result_tvalid (m_axis_result_tvalid),
        .m_axis_result_tready (m_axis_result_tready),
        .m_axis_result_tdata  (m_axis_result_tdata)
    );

endmodule
