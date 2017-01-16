// Time Unit = 1 ns		(#10 means 10 ns)
// Simulation Precision = 100 ps
`timescale 1ns/100ps 

// Filename:    tb_adder_32_bit.v
// Author:      Michael Feneley
// Date:        15 January 2017
// Version:     1
// Description: This file contains a test bench for the 32 bit adder.


module tb_program_counter();      


  wire clk;
  clock clo(clk);
  reg reset;
  wire [31:0] next_address;
  wire [31:0] pc_address;

  
  program_counter counter(clk, reset, next_address, pc_address, next_address);  

	


  initial begin
   reset = 0;
   #10;
   reset = 1;
  


  end


endmodule
