// Filename:    32_bit_adder.v
// Author:      Michael Feneley
// Date:        14 January 2016
// Version:     1
// Description: Behavioral description of 32 bit adder.

module adder_32_bit(op1, op2, out);
		               // Initial val control and reset
  input [31:0] op1;            // First 32 bit input to the adder
  input [31:0] op2;            // Second 32 bit input to the adder.
  output [31:0] out;

  assign out = op1 + op2;


endmodule