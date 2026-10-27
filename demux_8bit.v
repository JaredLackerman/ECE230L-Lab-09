module demux_8bit(
    input [7:0] data,
    input [1:0] sel,
    output reg [31:0] out   // {byte3, byte2, byte1, byte0}
);
    always @(*) begin
        case (sel)
            2'b00: out <= {8'b0, 8'b0, 8'b0, data};
            2'b01: out <= {8'b0, 8'b0, data, 8'b0};
            2'b10: out <= {8'b0, data, 8'b0, 8'b0};
            2'b11: out <= {data, 8'b0, 8'b0, 8'b0};
        endcase
    end
endmodule