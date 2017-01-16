// Filename:    instruction_incrementer.v
// Author:      Michael Feneley
// Date:        15 February 2015
// Version:     2 (Modified 19 February 2015)
// Description: This file contains a behavioral definition for an instruct incrementer.

module program_counter(clk, reset, in_addr, cur_addr, next_addr);

  input wire clk;	                   // Clock signal. Tells the counter when to read the new address	
  input wire reset;                        // Initial val control and reset to address 0. RESET ADDRESS SUBJECT TO CHANGE

  input wire [31:0] in_addr;               // First 32 bit input to the adder
  output reg [31:0] cur_addr;
  output reg [31:0] next_addr;
  
  always @(posedge clk or negedge reset) begin
    if(reset == 0) begin
      cur_addr <= 0;
      next_addr <= 1;
    end else begin 
	cur_addr <= in_addr;
	next_addr <= in_addr + 1;
    end
  end



endmodule
