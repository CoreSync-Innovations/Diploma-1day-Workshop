module mux_2_to_1_tb ();

reg  a;
reg  b;
reg  selx;
wire out;
    
   
mux_2_to_1 mux_2_to_1 (
                        .in0(a), 
                        .in1(b),
                        .sel(selx),
                        .out(out)
                      );
  
initial
    begin
        {a,b} = {2'b00}; {selx} = {1'b0} ;#50;
        {a,b} = {2'b11}; {selx} = {1'b0} ;#50;
        {a,b} = {2'b00}; {selx} = {1'b0} ;#50;
        {a,b} = {2'b01}; {selx} = {1'b0} ;#50;
        {a,b} = {2'b10}; {selx} = {1'b0} ;#50;
        {a,b} = {2'b11}; {selx} = {1'b0} ;#50;
        {a,b} = {2'b00}; {selx} = {1'b1} ;#50;
        {a,b} = {2'b01}; {selx} = {1'b1} ;#50;
        {a,b} = {2'b10}; {selx} = {1'b1} ;#50;
        {a,b} = {2'b11}; {selx} = {1'b1} ;#50;
      	$finish;
end

initial

    begin
      $display("a\tb\tselx\tout");
      $display("-----------------------------------------");
      $monitor("%b\t%b\t%b\t%b",a,b,selx,out);
    end
endmodule