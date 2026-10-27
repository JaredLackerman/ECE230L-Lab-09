module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire [31:0] demuxed_data;   // one byte of data per memory
    wire [3:0]  demuxed_store;  // one store line per memory
    wire [31:0] stored;         // outputs of the four memories

    demux_8bit data_demux(
        .data(data),
        .sel(addr),
        .out(demuxed_data)
    );

    demux_1bit store_demux(
        .in(store),
        .sel(addr),
        .out(demuxed_store)
    );

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            byte_memory mem(
                .data(demuxed_data[8*i +: 8]),
                .store(demuxed_store[i]),
                .memory(stored[8*i +: 8])
            );
        end
    endgenerate

    mux_8bit out_mux(
        .in(stored),
        .sel(addr),
        .out(memory)
    );
endmodule