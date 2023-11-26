module ledshift(clk,reset,led);
    input clk,reset;
    output reg [5:0]led;
    always@(posedge clk)
    begin
    if(!reset)
    led[0]<=1'b1;
    else
    begin
    led[1]<=led[0];
    led[2]<=led[1];
    led[3]<=led[2];
    led[4]<=led[3];
    led[5]<=led[4];
    led[0]<=led[5];
    end
end
endmodule
