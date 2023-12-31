`timescale 1ns / 1ps
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog project: Verilog code for Sequence Detector using Moore FSM
// Verilog Testbench for Sequence Detector using Moore FSM 
module seq_det_moore_fsm_tb;

 // Inputs
 reg sequence_in;
 reg clock;
 reg reset;

 // Outputs
 wire detector_out;

 // Instantiate the Sequence Detector using Moore FSM
 seq_det_moore_fsm uut (
  .sequence_in(sequence_in), 
  .clock(clock), 
  .reset(reset), 
  .detector_out(detector_out)
 );
 initial begin
 $dumpfile("seq_det.vcd");
 $dumpvars(0, seq_det_moore_fsm_tb);
 clock = 0;
 forever #5 clock = ~clock;

 end 
 initial begin
  // Initialize Inputs
  sequence_in = 0;
  reset = 1;
  // Wait 100 ns for global reset to finish
  #30;
      reset = 0;
  #40;
  sequence_in = 0;
  #10;
  sequence_in = 0;
  #10;
  sequence_in = 1; 
  #20;
  sequence_in = 0; 
  #20;
  sequence_in = 1; 
  #20;
  sequence_in = 1;
  #20;
  sequence_in = 1;  
  #20;
  sequence_in = 1;  
  #20;
  sequence_in = 0;
  #20;
  sequence_in = 0;  
  // Add stimulus here

 end
      
endmodule
