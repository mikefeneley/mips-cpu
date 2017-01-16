// Time Unit = 1 ns		(#10 means 10 ns)
// Simulation Precision = 100 ps
`timescale 1ns/100ps 

// Filename:    tb_adder_32_bit.v
// Author:      Michael Feneley
// Date:        15 January 2017
// Version:     1
// Description: This file contains a test bench for the 32 bit adder.


module tb_memory();      

  

   wire clk;         // Clock signal. Tells the counter when to read the new address
   reg reset;
   reg read1_sig;               // Signal to determine if memory should be read from read1_address into read2_out.
   reg read2_sig;               // Signal to determine if memory should be read from read1_address into read2_out.
   reg write2_sig;               // Signal to determine if memory should be read from read1_address into read2_out.

   reg [31:0] read1_address;
   reg [31:0] read2_address;
   reg [31:0] write2_address;
   reg [31:0] write2_value;

  wire[31:0] read1_out;
  wire[31:0] read2_out;

  clock sys_clock(clk);
  memory ram(clk, reset, read1_sig, read1_address, read1_out, read2_sig, read2_address, read2_out, write2_sig, write2_address, write2_value);

  initial begin
   read1_sig = 1;               // Signal to determine if memory should be read from read1_address into read2_out.
   read2_sig = 1;               // Signal to determine if memory should be read from read1_address into read2_out.
   write2_sig = 1;               // Signal to determine if memory should be read from read1_address into read2_out.

   read1_address = 2;
   read2_address = 3;
   write2_address = 0;
   write2_value = 666;
   reset = 0;
   #10;
   reset = 1;
  


  end


endmodule