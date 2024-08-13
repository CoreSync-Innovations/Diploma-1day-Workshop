module N_bit_DN_counter # (parameter N = 3) 
                (
                  input  wire           rstn,
                  input  wire           clk,
                  output reg            done,
                  output reg   [N-1:0]  count_out  
                );                       

always @ (posedge clk or negedge rstn) begin
  if (~rstn) begin
         count_out  <= '1;
         done       <= 1'b0;
  end
  else begin
    if(count_out == '0) begin
        count_out  <= '1;
        done       <= 1'b1;
    end
    else begin
          count_out  <= count_out - 1;
      		done       <= 1'b0;
    end
  end
end 

endmodule 
