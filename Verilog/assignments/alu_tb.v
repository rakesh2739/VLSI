module alu_ex_tb;
    reg [2:0]a;
    reg [2:0]b;
    reg sel;
    wire [3:0]y;
alu_ex alu1(.a(a), .b(b), .sel(sel), .y(y));
initial begin
    
a=7;
b=2;
$monitor("Time = %0t sel=%d y=%d",$time,sel,y);
sel = 1;
#5 sel = 0;
end

endmodule