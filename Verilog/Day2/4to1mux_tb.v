module mux_4to1_tb;
    reg d0,d1,d2,d3;
    reg [1:0] sel;
    wire y;

mux_4to1 m1(.d0(d0), .d1(d1), .d2(d2), .d3(d3), .sel(sel), .y(y));

initial begin
    d0=1'b1;
    d1=1'b0;
    d2=1'b1;
    d3=1'b0;
    $monitor("Time = %0t | sel = %b | y = %b" , $time , sel , y);
    sel = 2'b00;
    #5 sel = 2'b01;
    #5 sel = 2'b10;
    #5 sel = 2'b11;
end
endmodule
