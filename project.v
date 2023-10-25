module button_counter (clk, reset, B1, B2, counter, prefernce);
    input clk;  // Clock signal
    input reset; // Reset signal
    input B1;   // Button B1
    input B2;   // Button B2
    input prefernce;
    output [3:0] counter; // 4-bit counter

    reg [3:0] count;
    initial begin
        count <= 0;
    end
always @(posedge clk) begin
    if (!reset) begin
        if (B1 & prefernce) begin
            if (B2) begin
                count <= count + 1;
            end 
        end else if(B2 & !prefernce) begin
            if (B1) begin
                count <= count - 1;
            end 
        end
    end else begin
        count <= 0;
    end
end

    assign counter = count;
endmodule
