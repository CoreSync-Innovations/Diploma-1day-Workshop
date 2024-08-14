module ha (
              input  wire a, 
              input  wire b, 
              output wire sum, 
              output wire carry
          );

/* By default, the code compiles with the bitwise operators */  
`ifndef BITWISE
   assign sum = a ^ b;
   assign carry = a & b;
`endif 

`ifdef LOGICAL
   assign sum = a ^ b;
   assign carry = a && b;
`endif 

`ifdef ARITHMETIC
  assign {carry,sum} = a + b;
`endif 
  
endmodule
