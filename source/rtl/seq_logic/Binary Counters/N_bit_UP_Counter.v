module N_bit_UP_counter # (parameter N = 3) 
                          (
                            input  wire           rstn,
                            input  wire           clk,
                            output reg            done,
                            output reg   [N-1:0]  count_out  
                          );                       

always @ (posedge clk or negedge rstn) begin
  if (~rstn) begin                    
    count_out  <= {N{1'b0}};
    done <= 1'b0;
  end
  else begin
    if(count_out == {N{1'b1}}) begin       // {N{1'b1}} is equivalent to 1'b1 repeated N times ; this is called concatenation operator
      count_out  <= {N{1'b0}};
        done       <= 1'b1;
    end
    else begin
        count_out  <= count_out + 1;
        done       <= 1'b0;
    end
  end
end 

endmodule 
