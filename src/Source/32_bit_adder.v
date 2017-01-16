// Filename:    32_bit_adder.v
// Author:      Michael Feneley
// Date:        14 January 2016
// Version:     1
// Description: Behavioral description of 32 bit adder.

module adder_32_bit(clock, en, reset, op1, op2, out);
  input clock;		       // Clock signal	
  input en;                    // Enable signal
  input reset;                 // Initial val control and reset
  input [31:0] op1;            // First 32 bit input to the adder
  input [31:0] op2;            // Second 32 bit input to the adder.
  output reg [31:0] out;

  always @(posedge clock or negedge reset) begin
    if(reset == 0) begin
      out <= 0;
    end else begin
      out = op1 + op2;
    end
  end
	


endmodule