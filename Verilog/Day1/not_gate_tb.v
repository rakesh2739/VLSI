module not_gate_tb;
    reg a;
    wire y;
not_gate n1(.a(a) , .y(y));
initial begin
    $dumpfile("not_gate_tb.vcd");
    $dumpvars();
    $monitor("Time=%0t a=%b y=%b" , $time , a , y);
    a=0;
    #5 a=1;
    #5;
end
endmodule