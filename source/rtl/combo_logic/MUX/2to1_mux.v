module mux_2_to_1 (
                        input  wire  in0,
                        input  wire  in1,
                        input  wire  sel,
                        output wire  out              // the signal out is declared as reg since this has later been used as a proecdural continuous assignment
                  );
   
  
assign out = sel ? in1 : in0;
  
endmodule    