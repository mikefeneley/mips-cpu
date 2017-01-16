`timescale 1ns/100ps 

// Filename:    clock.v
// Author:      Michael Feneley
// Date:        14 January 2016
// Version:     1
// Description: Periodic clock signal.

module clock(clk);	
       	
  output reg clk;  // Clock signal

  initial begin
    clk = 0;
    forever begin
       #5  clk = ~clk;
    end
  end
	


endmodule
