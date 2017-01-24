
// Filename:    instruction_incrementer.v
// Author:      Michael Feneley
// Date:        15 February 2015
// Version:     2 (Modified 19 February 2015)
// Description: This file contains a behavioral definition for an instruct incrementer.

module reg_bank(clk, reset, read_reg1, read_reg2, write_reg, wire_data, read_data1, read_data2);

input wire clk;
input wire reset;
input wire [25:21] read_reg1;
input wire [20:16] read_reg2;
input wire [31:0] write_reg;
input wire [31:0] wire_data;
output reg [31:0] read_data1;
output reg [31:0] read_data2;

reg [31:0] r0;
reg [31:0] r1;
reg [31:0] r2;
reg [31:0] r3;
reg [31:0] r4;
reg [31:0] r5;
reg [31:0] r6;
reg [31:0] r7;
reg [31:0] r8;
reg [31:0] r9;
reg [31:0] r10;
reg [31:0] r11;
reg [31:0] r12;
reg [31:0] r13;
reg [31:0] r14;
reg [31:0] r15;
reg [31:0] r16;
reg [31:0] r17;
reg [31:0] r18;
reg [31:0] r19;
reg [31:0] r20;
reg [31:0] r21;
reg [31:0] r22;
reg [31:0] r23;
reg [31:0] r24;
reg [31:0] r25;
reg [31:0] r26;
reg [31:0] r27;
reg [31:0] r28;
reg [31:0] r29;
reg [31:0] r30;
reg [31:0] r31;

always @(posedge clk or negedge reset) begin
    if(reset == 0) begin
	r0 = 0;
	r1 = 0;
	r2 = 0;
	r3 = 0;
	r4 = 0;
	r5 = 0;
	r6 = 0;
	r7 = 0;
	r8 = 0;
	r9 = 0;
	r10 = 0;
	r11 = 0;
	r12 = 0;
	r13 = 0;
	r14 = 0;
	r15 = 0;
	r16 = 0;
	r17 = 0;
	r18 = 0;
	r19 = 0;
	r20 = 0;
	r21 = 0;
	r22 = 0;
	r23 = 0;
	r24 = 0;
	r25 = 0;
	r26 = 0;
	r27 = 0;
	r28 = 0;
	r29 = 0;
	r30 = 0;
	r31 = 0;
    end else begin
	
    end
end


endmodule
