module concatenation;
    reg a;
    reg [3:0] b,c;
    reg [5:0] y;
initial begin
    
    a=1'b1;
    b=4'b1011;
    c=4'b1101;
    y = {a,{4{b[0]}},c[1]};
    $display("replicated o/p : %b" , y);
end
endmodule