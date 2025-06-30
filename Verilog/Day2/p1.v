module example; 
    wire net1;
    wire net2;

    assign net1 = 1'b1;
    assign net2 = net1;

    initial begin
        $display("net1 = %b , net2 = %b" , net1 , net2);
    end
endmodule