// Filename:    instruction_incrementer.v
// Author:      Michael Feneley
// Date:        15 February 2015
// Version:     2 (Modified 19 February 2015)
// Description: This file contains a behavioral definition for an instruct incrementer.

module memory(clk, reset, data_op, instruct_addr, data_addr, write_val, instruct_val, read_val);

  parameter mem_size = 511; // Sign error. Temporarily using value less than total size.

  input wire clk;	                   // Clock signal. Tells the counter when to read the new address
  input wire reset;
  input wire data_op;
  input wire [31:0]  instruct_addr;               // Signal to determine if memory should be read from read1_address into read2_out.
  input wire [31:0]  data_addr;               // Signal to determine if memory should be read from read1_address into read2_out.
  input wire [31:0] write_val;

  output reg [31:0] instruct_val;
  output reg[31:0] read_val;

  reg [31:0] mem [0:mem_size];    // System memory.

  always @(posedge clk or negedge reset) begin
    if(reset == 0) begin
      instruct_val <= 0;
      read_val <= 0;
      mem[0] = 5;
      mem[1] = 5;
      mem[2] = 5;
      mem[3] = 5;
      mem[4] = 5;
      mem[5] = 5;
      mem[6] = 5;
      mem[7] = 5;
      mem[8] = 5;
      mem[9] = 5;
      mem[10] = 5;
    end else begin
      instruct_val <= mem[instruct_addr];
      if(data_op == 1) begin
	read_val <= mem[data_addr];
      end else begin
        mem[data_addr] <= write_val;
      end 
    end
  end



endmodule
