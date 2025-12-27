`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2025 05:08:27 PM
// Design Name: 
// Module Name: test_tb_0
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



module test_tb_0;

    reg clk;
    reg rstn;

    // DUT inputs
    reg        start;
    reg [31:0] in_float;

    // DUT outputs
    wire [31:0] out_float;
    wire         out_valid;

    // Instantiate DUT
    fp_absolute DUT (
        .clk(clk),
        .rstn(rstn),
        .start(start),
        .in_float(in_float),
        .out_float(out_float),
        .out_valid(out_valid)
    );

    //----------------------------------------
    // Clock generation
    //----------------------------------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   // 100 MHz
    end

    //----------------------------------------
    // Reset
    //----------------------------------------
    initial begin
        rstn = 0;
        start = 0;
        in_float = 0;

        #20;
        rstn = 1;

        #20;

        // Test 1: | -5.5 |
        send_value(32'hC0B00000);   // -5.5

        // Test 2: | 3.25 |
        send_value(32'h40500000);   // 3.25

        // Test 3: | -0.0 |
        send_value(32'h80000000);   // -0

        // Test 4: | 123.125 |
        send_value(32'h42F70000);

        #200;
        $finish;
    end

    //----------------------------------------
    // Task to start a new absolute operation
    //----------------------------------------
    task send_value(input [31:0] fp);
    begin
        @(posedge clk);

        in_float <= fp;
        start    <= 1'b1;

        @(posedge clk);
        start    <= 1'b0;      // Pulse start for 1 cycle

        // Wait for out_valid
        wait (out_valid == 1'b1);

        $display("Time=%0t | Input FP=%h | ABS Output=%h",
                 $time, fp, out_float);
    end
    endtask

endmodule


