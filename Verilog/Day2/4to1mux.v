module mux_4to1(
    input d0,d1,d2,d3,
    input [1:0] sel,
    output reg y
);
always @(*) begin
    if (sel==2'b00) begin
        y=d0;
    end
    else if (sel==2'b01) begin
        y=d1;
    end
    else if (sel==2'b10) begin
        y=d2;
    end
    else begin
        y=d3;
    end
end
endmodule