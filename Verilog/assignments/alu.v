module alu_ex(
    input [2:0]a,
    input [2:0]b,
    input sel,
    output reg [3:0]y
);
always @(*) begin
    if (sel == 1) begin
        y = a+b;
    end else begin
        y = a-b;
    end
end
endmodule