`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2025 05:51:22 PM
// Design Name: 
// Module Name: float_sub
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


module float_sub (
    input  wire        aclk,
    input  wire        aresetn,

    // User data availability
    input  wire        a_valid,
    input  wire        b_valid,
    input  wire [31:0] a_data,
    input  wire [31:0] b_data,
    input  wire [7:0]  operation,

    // Floating point output
    output wire        result_valid,
    input  wire        result_ready,
    output wire [31:0] result_data
);

    // AXIS interface registers
    reg s_axis_a_tvalid;
    reg s_axis_b_tvalid;
    reg s_axis_operation_tvalid;

    wire s_axis_a_tready;
    wire s_axis_b_tready;
    wire s_axis_operation_tready;

    wire m_axis_result_tvalid;
    wire [31:0] m_axis_result_tdata;

    assign result_valid = m_axis_result_tvalid;
    assign result_data  = m_axis_result_tdata;

    //---------------------------------------------
    //  FSM: WAIT FOR A & B THEN START OPERATION
    //---------------------------------------------

    // State encoding (Verilog way)
    localparam IDLE        = 2'b00;
    localparam SEND        = 2'b01;
    localparam WAIT_RESULT = 2'b10;

    reg [1:0] state;
    reg [1:0] next_state;

    // State transition logic
    always @(*) begin
        next_state = state;

        case (state)
            IDLE: begin
                if (a_valid && b_valid)
                    next_state = SEND;
            end

            SEND: begin
                if (s_axis_a_tready && s_axis_b_tready && s_axis_operation_tready)
                    next_state = WAIT_RESULT;
            end

            WAIT_RESULT: begin
                if (m_axis_result_tvalid && result_ready)
                    next_state = IDLE;
            end
        endcase
    end

    // State register
    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Control of tvalid signals
    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            s_axis_a_tvalid         <= 1'b0;
            s_axis_b_tvalid         <= 1'b0;
            s_axis_operation_tvalid <= 1'b0;
        end else begin
            case (next_state)
                IDLE: begin
                    s_axis_a_tvalid         <= 1'b0;
                    s_axis_b_tvalid         <= 1'b0;
                    s_axis_operation_tvalid <= 1'b0;
                end

                SEND: begin
                    s_axis_a_tvalid         <= 1'b1;
                    s_axis_b_tvalid         <= 1'b1;
                    s_axis_operation_tvalid <= 1'b1;
                end

                WAIT_RESULT: begin
                    s_axis_a_tvalid         <= 1'b0;
                    s_axis_b_tvalid         <= 1'b0;
                    s_axis_operation_tvalid <= 1'b0;
                end
            endcase
        end
    end

    //---------------------------------------------
    // Floating Point Operator Instance
    //---------------------------------------------
    floating_point_1 fp_core (
        .aclk(aclk),

        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tdata(a_data),

        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_b_tready(s_axis_b_tready),
        .s_axis_b_tdata(b_data),

        .s_axis_operation_tvalid(s_axis_operation_tvalid),
        .s_axis_operation_tready(s_axis_operation_tready),
        .s_axis_operation_tdata(operation),

        .m_axis_result_tvalid(m_axis_result_tvalid),
        .m_axis_result_tready(result_ready),
        .m_axis_result_tdata(m_axis_result_tdata)
    );

endmodule

