`timescale 1ns/1ps
module ha_tb();
  
reg  a,b;
wire sum,carry;

ha  i_adder(
            .a(a),
            .b(b),
            .sum(sum),
            .carry(carry)
           );

initial begin
        {a,b} = {2'b00}; #50;
        {a,b} = {2'b01}; #50;
        {a,b} = {2'b10}; #50;
        {a,b} = {2'b11}; #50;
     $finish;
end


initial begin
            $display("\t\tTruth table of a Half Adder");
            $display("----------------------------------------------------------------------------");
            $display("A\t\tB\t\t\tSum\t\t\tCarry");
            $monitor("%b\t\t%b\t\t\t%b\t\t\t%b",a,b,sum,carry);
end

endmodule