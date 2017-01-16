// Time Unit = 1 ns		(#10 means 10 ns)
// Simulation Precision = 100 ps
`timescale 1ns/100ps 

// Filename:    tb_adder_32_bit.v
// Author:      Michael Feneley
// Date:        15 January 2017
// Version:     1
// Description: This file contains a test bench for the 32 bit adder.


module tb_instruction_incrementer();          
  wire clk;
  reg en;
  reg reset; 
  reg [31:0] instruction;
  wire [31:0] out;

  clock sys_clock(clk);
  instruction_increment incrementer(clk, en, reset, instruction, out);
// Test input waveform - defined as an initial block (procedure)
  initial begin
    reset = 0;
    en = 0;
    instruction = 0;
    #5;
    reset = 1;
    #5;
    instruction = out;
    #5;
    instruction = out;
    #5;
    instruction = out;
    #5;
    instruction = out;
    #5;
    instruction = out;
    #5;
    instruction = out;
  end
endmodule