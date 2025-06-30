module digital_clock_tb;
    reg clk;
    reg reset;
    wire [5:0] sec;
    wire [5:0] min;
    wire [4:0] hr;
digital_clock dgc(.clk(clk), .reset(reset), .sec(sec), .min(min) , .hr(hr));
initial begin
    clk = 0;
    forever #0.5 clk = ~clk; 
end
initial begin
    reset = 1;
    #1 reset = 0;
    $display("%2d:%2d:%2d", hr , min , sec);
    repeat(120) begin
    @(posedge clk);
    $display("%2d:%2d:%2d" , hr , min , sec);
    end
end
endmodule