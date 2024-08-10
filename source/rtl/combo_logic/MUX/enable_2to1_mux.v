module enable_mux_2_to_1 (
                            input  wire in0,
                            input  wire in1,
                            input  wire sel,
                            input       en,              // observe that the data type wire is not explicitly defined for this signal 
                            output reg  out              // the signal out is declared as reg since this has later been used as a proecdural continuous assignment
                        );
   
always @ (*) begin     
            if(~en)
                 out <= 1'b0;
            else 
                 out <= sel ? in1 : in0 ;
end
  
endmodule   