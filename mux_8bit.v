module mux_8bit(
    input [31:0] in,        // {byte3, byte2, byte1, byte0}
    input [1:0] sel,
    output reg [7:0] out
);
    always @(*) begin
        case (sel)
            2'b00: out <= in[7:0];
            2'b01: out <= in[15:8];
            2'b10: out <= in[23:16];
            2'b11: out <= in[31:24];
        endcase
    end
endmodule