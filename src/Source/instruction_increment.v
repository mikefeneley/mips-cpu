// Filename:    instruction_incrementer.v
// Author:      Michael Feneley
// Date:        15 February 2015
// Version:     2 (Modified 19 February 2015)
// Description: This file contains a behavioral definition for an instruct incrementer.

module instruction_increment(instruction, next_instruction);
  
  input [31:0] instruction;            // First 32 bit input to the adder
  output [31:0] next_instruction;
  assign next_instruction = instruction + 1;

endmodule