module fa_tb();
  
reg  a,b,carry_in;
wire sum,carry_out;

fa  i_adder(
            .a(a),
            .b(b),
            .carry_in(carry_in),
            .sum(sum),
            .carry_out(carry_out)
           );

initial begin
  				{a,b,carry_in} = {3'b000}; #50;
                {a,b,carry_in} = {3'b001}; #50;
                {a,b,carry_in} = {3'b010}; #50;
                {a,b,carry_in} = {3'b011}; #50;
                {a,b,carry_in} = {3'b100}; #50;
                {a,b,carry_in} = {3'b101}; #50;
                {a,b,carry_in} = {3'b110}; #50;
                {a,b,carry_in} = {3'b111}; #50;
                $finish;
end


initial begin
  $display("\t\tTruth table of a Full Adder");
  $display("---------------------------------------------------------------------------------------------------");
  $display("A\t\tB\t\t\Carry In\t\t\tSum\t\t\tCarry Out");
  $display("---------------------------------------------------------------------------------------------------");
  $monitor("%b\t\t%b\t\t%b\t\t\t\t%b\t\t\t%b",a,b,carry_in,sum,carry_out);
end

endmodule