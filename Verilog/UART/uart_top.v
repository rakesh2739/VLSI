//Baud-Rate Generator 
module baud_gen(
    input clk,
    input reset,
    output reg tick
);
parameter baud_div = 5208;
reg [12:0] count;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        count<=0;
        tick<=0     
    end else if (count==baud_div-1) begin
        count<=0;
        tick<=1;
    end else begin
        count <= count+1;
        tick <=0;
    end
end
endmodule

module uart_tx(
    input clk,
    input reset,
    input [9:0] data;
    input tx_start,
    input tick,
    output reg tx,
    output reg tx_busy
);
    reg [9:0] tx_shift;
    reg [3:0] bit_index;
    always @(posedge clk posedge reset) begin
        if (reset) begin
            tx <= 1;
            tx_busy <= 0;
        end
        else if (tx_start && !tx_busy) begin
            tx_shift = {1'b1,data,1'b0};
            tx_busy <= 1;
            bit_index <= 0;
        end
        else if (tx_busy && tick) begin
            tx <= tx_shift[0];
            tx_shift = tx_shift >> 1;
            bit_index <= bit_index+1;
            if (bit_index==9) begin
                tx_busy = 0;
            end        
        end
    end
endmodule

module uart_rx(
    input clk,
    input reset,
    input rx,
    input tick,
    
);
endmodule