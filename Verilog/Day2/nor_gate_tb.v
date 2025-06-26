module nor_gate_tb;
	reg a , b;
	wire y;
nor_gate nor1(.a(a) , .b(b) , .y(y));
initial begin
	$dumpfile("nor_gate_tb.vcd");
	$dumpvars();
	$monitor("Time=%0t | a=%b | b=%b | y=%b", $time, a, b, y);
a=0; b=0;
#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#5;
end
endmodule
