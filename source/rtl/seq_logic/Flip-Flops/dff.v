module DFF (
	       input  wire rstn,
	       input  wire clk,
	       input  wire d_in,
	       output reg q
           );
 
always @ (posedge clk or negedge rstn) begin
  if (~rstn)
    	q <= 1'b0;
  else 
    	q <= d_in;
end
 
endmodule
