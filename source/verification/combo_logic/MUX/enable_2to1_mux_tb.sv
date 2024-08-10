module enable_mux_2_to_1_tb ();

reg  a;
reg  b;
reg  selx;
reg  enx;
wire out;
    
   
enable_mux_2_to_1 mux_2_to_1 (
                                .in0(a), 
                                .in1(b),
                                .sel(selx),
                                .en(enx),
                                .out(out)
                             );
  
initial
    begin
        {a,b} = {2'b00}; {enx,selx} = {2'b00} ;#50;
        {a,b} = {2'b11}; {enx,selx} = {2'b00} ;#50;
        {a,b} = {2'b00}; {enx,selx} = {2'b10} ;#50;
        {a,b} = {2'b01}; {enx,selx} = {2'b10} ;#50;
        {a,b} = {2'b10}; {enx,selx} = {2'b10} ;#50;
        {a,b} = {2'b11}; {enx,selx} = {2'b10} ;#50;
        {a,b} = {2'b00}; {enx,selx} = {2'b11} ;#50;
        {a,b} = {2'b01}; {enx,selx} = {2'b11} ;#50;
        {a,b} = {2'b10}; {enx,selx} = {2'b11} ;#50;
        {a,b} = {2'b11}; {enx,selx} = {2'b11} ;#50;
      	$finish;
end

initial

    begin
      $display("enx\ta\tb\tselx\tout");
      $display("-----------------------------------------");
      $monitor("%b\t%b\t%b\t%b\t%b",enx,a,b,selx,out);
    end
endmodule