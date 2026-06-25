module tb_seq_detector;

reg clk;
reg rst;
reg din;
wire detect;

seq_detector_1011 DUT (
    .clk(clk),
    .rst(rst),
    .din(din),
    .detect(detect)
);

always #5 clk = ~clk;

task send_bit;
    input bit_val;
    begin
        @(posedge clk);
        din = bit_val;
    end
endtask

initial begin
    clk = 0;
    rst = 1;
    din = 0;

    #20 rst = 0;

    send_bit(1);
    send_bit(0);
    send_bit(1);
    send_bit(1);

    send_bit(0);
    send_bit(1);
    send_bit(0);
    send_bit(1);
    send_bit(1);

    #50;
    $finish;
end

initial begin
    $monitor("Time=%0t Din=%b Detect=%b",
              $time,din,detect);
end

endmodule
