`timescale 1ns/1ps
module N_bit_UP_counter_tb #(parameter N = 3)();

reg 			    clk,rstn;
wire			    done;
wire  [N-1:0]   count_out;

N_bit_UP_counter counter_1      (
                                      .clk(clk),
                                      .rstn(rstn),
                                      .done(done),
                                      .count_out(count_out)  
                                );    

initial begin
   clk = 1'b0;
   rstn = 1'b1;
end

initial forever begin
   #5 clk = ~clk ;
end


initial begin
     $dumpfile("test.vcd");
     $dumpvars(0,N_bit_UP_counter_tb); 
     rstn = 1'b0; #5;
     rstn = 1'b1; #30;
     rstn = 1'b0; #50;
     rstn = 1'b1; #200;
     $finish;
end

  
endmodule
