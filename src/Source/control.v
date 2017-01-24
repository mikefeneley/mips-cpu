
// Filename:    instruction_incrementer.v
// Author:      Michael Feneley
// Date:        15 February 2015
// Version:     2 (Modified 19 February 2015)
// Description: This file contains a behavioral definition for an instruct incrementer.

module memory(clk, reset, instruct, reg_dest, branch, mem_read, mem_to_reg, mem_write, alu_op, alu_src, reg_write);

input wire clk; 
input wire reset; 
input wire [31:26] instruct; 
output reg reg_dest;
output reg branch ;
output reg mem_read;
output reg mem_to_reg;
output reg mem_write;
output reg alu_op;
output reg alu_src;
output reg reg_write;

// Use second block to parse inpout instruction and assign signal values.
always @(posedge clk or negedge reset) begin
    if(reset == 0) begin
	reg_dest = 0;
	branch = 0;
	mem_read = 0;
	mem_to_reg = 0;
	mem_write = 0;
	alu_op = 0;
	alu_src = 0;
	reg_write = 0;
    end else begin
      	reg_dest = 0;
	branch = 0;
	mem_read = 0;
	mem_to_reg = 0;
	mem_write = 0;
	alu_op = 0;
	alu_src = 0;
	reg_write = 0;
    end
end

endmodule