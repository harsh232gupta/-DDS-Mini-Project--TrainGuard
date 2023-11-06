

module testbench;
    reg clk;
    reg reset;
    reg B1;
    reg B2;
    reg prefernce;
    wire [3:0] counter;

    // Instantiate the button_counter
    button_counter counter_instance (
        .clk(clk),
        .reset(reset),
        .B1(B1),
        .B2(B2),
        .counter(counter),
        .prefernce(prefernce)
    );

    // LED output
    wire led;
    assign led = (counter > 5) ? 1'b1 : 1'b0;

    // Clock generation
    always begin
        #10 clk = ~clk;
    end

    // Initial values
    initial begin
        clk = 0;
        reset = 0;
        B1 = 0;
        B2 = 0;
        prefernce = 1; // Set the preference initially
        #10 reset = 1; // Activate reset
        #10 reset = 0; // Deactivate reset
    end

    // Simulation
    initial begin
        // Scenario 1: Press B1, then B2 (count should increment)
        prefernce = 1;
        #10 reset = 0; B1 = 1; B2 = 1;  #10 B1 = 0; B2 = 0;
        #10 B1 = 1; B2 = 1;  #10 B1 = 0; B2 = 0;
        #10 B1 = 1; B2 = 1;  #10 B1 = 0; B2 = 0;
        #10 B1 = 1; B2 = 1;  #10 B1 = 0; B2 = 0;
        #10 B1 = 1; B2 = 1;  #10 B1 = 0; B2 = 0;
        #10 B1 = 1; B2 = 1;  #10 B1 = 0; B2 = 0;
        #10 B1 = 1; B2 = 1;  #10 B1 = 0; B2 = 0;

        // Scenario 2: Press B2, then B1 (count should decrement)
        prefernce = 0;
        #10 B2 = 1; B1 = 1;  #10 B2 = 0; B1 = 0;
        #10 B2 = 1; B1 = 1;  #10 B2 = 0; B1 = 0;
        #10 B2 = 1; B1 = 1;  #10 B2 = 0; B1 = 0;
        #10 B2 = 1; B1 = 1;  #10 B2 = 0; B1 = 0;


        // Stop the simulation
        $finish;
    end

    // Display count value
    always @(posedge clk) begin
        $display ("passanger limit = 5  ");
        $display("Count = %d  Led =  %d\n", counter,led);
    end

    // Display LED output
    // always @(posedge clk) begin
    //     $display("LED = %b", led);
    // end

endmodule
