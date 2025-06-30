module concatenation;
    reg a;
    reg [3:0] b,c;
    reg [2:0] y;
initial begin
    
    a=1'b1;
    b=4'b1011;
    c=4'b1101;
    y = {a,b[0],c[1]};
    $display("Concatenated o/p : %b" , y);
end
endmodule