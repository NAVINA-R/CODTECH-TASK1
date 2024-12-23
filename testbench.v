module tb_logic_gates;

    // Testbench signals
    reg A, B;
    wire Y_and, Y_or, Y_not, Y_xor;

    // Instantiate the AND, OR, NOT, and XOR gate modules
    AND_gate and1 (.A(A), .B(B), .Y(Y_and));
    OR_gate or1 (.A(A), .B(B), .Y(Y_or));
    NOT_gate not1 (.A(A), .Y(Y_not));
    XOR_gate xor1 (.A(A), .B(B), .Y(Y_xor));

    // Stimulus to test the gates
    initial begin
        // Set up VCD dump file
        $dumpfile("dump.vcd");  // Specifies the name of the VCD file
        $dumpvars(0, tb_logic_gates);  // Dumps all variables in the testbench module

        // Initialize inputs
        A = 0; B = 0;
        #10; // Wait for 10 time units
        
        A = 0; B = 1;
        #10;
        
        A = 1; B = 0;
        #10;
        
        A = 1; B = 1;
        #10;

        // End simulation
        $finish;
    end

    // Monitor the output
    initial begin
        $monitor("At time %t: A = %b, B = %b, AND = %b, OR = %b, NOT = %b, XOR = %b", 
                 $time, A, B, Y_and, Y_or, Y_not, Y_xor);
    end

endmodule
