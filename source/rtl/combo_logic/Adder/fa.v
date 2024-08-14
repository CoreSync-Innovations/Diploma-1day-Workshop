
module fa (
              input  wire a, 
              input  wire b,
              input  wire carry_in,
              output wire sum, 
              output wire carry_out
          );

assign sum = a ^ b ^ carry_in;  
assign carry_out = (a & b) + ((a ^ b) & carry_in);

  
//JUST FOR FUN : Use the below code in place of previous expression for carry_out and review the output truth table - what do you observe?

//assign carry_out = (a & b) + (a ^ b) & carry_in;  

endmodule
