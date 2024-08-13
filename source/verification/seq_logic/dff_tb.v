`timescale 1ns/1ps
module DFF_tb ();

reg    rstn, clk, d_in;
wire   q;
  
DFF flop (
                .rstn(rstn),
    			.clk(clk),
    			.d_in(d_in),
    			.q(q)  
  		 );  
   
always #5 clk =  ~clk;
  
initial begin
  rstn = 1'b0;
  clk  = 1'b0; 
  d_in = 1'b0; #30;
end
  
initial begin
  $dumpfile("test.vcd");
  $dumpvars(0,DFF_tb);
  rstn = 1'b1; #10;
  d_in = 1'b1; #10;
  d_in = 1'b0; #10;
  d_in = 1'b1; #10;
  d_in = 1'b0; #10;
  d_in = 1'b1; #10;
  d_in = 1'b0; #10;
  rstn = 1'b0; #30;
  d_in = 1'b1; #10;
  d_in = 1'b0; #10;
  rstn = 1'b1; #30;
  d_in = 1'b1; #10;
  d_in = 1'b0; #10;
  d_in = 1'b1; #10;
  d_in = 1'b0; #10;
  $finish;
end
  
/*
initial begin
	$display("---------------------------------------------------------------------------------------------------");
  	$display("Reset\t\tClock\t\t\Input\t\tOutput");
	$display("---------------------------------------------------------------------------------------------------");
  	$monitor("%b\t\t%b\t\t%b\t\t%b",rstn,clk,d_in,q);  
end
*/
  
endmodule