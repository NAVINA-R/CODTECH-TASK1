module AND_gate (
    input wire A, B,   // Inputs
    output wire Y      // Output
);
    assign Y = A & B;  // AND operation
endmodule

module OR_gate (
    input wire A, B,   // Inputs
    output wire Y      // Output
);
    assign Y = A | B;  // OR operation
endmodule

module NOT_gate (
    input wire A,   // Input
    output wire Y   // Output
);
    assign Y = ~A;  // NOT operation
endmodule

module XOR_gate (
    input wire A, B,   // Inputs
    output wire Y      // Output
);
    assign Y = A ^ B;  // XOR operation
endmodule
