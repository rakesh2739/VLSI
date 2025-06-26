module xor_gate_tb;
    reg a;
    reg b;
    wire y;
xor_gate xr1(.a(a),.b(b),.y(y));
initial begin
    $dumpfile("xor_gate_tb.vcd");
    $dumpvars();
    $monitor("%0t a=%b b =%b y=%b" , $time , a , b , y);
a=0; b=0;
#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#5;

end
endmodule