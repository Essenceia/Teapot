module crc_8 (
    input  wire        clk,
    input  wire [7:0]  data_i,
    input  wire        crc_en_i,
    input  wire        crc_rst_i,    // pulse to reset CRC to 0xFFFFFFFF
    output wire [31:0] crc_o,     // current CRC (bit-reversed, inverted)
    output wire [31:0] crc_early_o      // raw CRC register value
);

    reg [31:0] crc_reg;
    wire [31:0] crc_next;

    // Byte-at-a-time CRC calculation (LSB-first / reflected)
    // Processes one byte per clock, XORing bit-by-bit through the polynomial
    function [31:0] crc_step;
        input [31:0] crc_in;
        input [7:0]  data;
        integer i;
        reg [31:0] c;
        begin
            c = crc_in ^ {24'd0, data};
            for (i = 0; i < 8; i = i + 1) begin
                if (c[0])
                    c = {1'b0, c[31:1]} ^ 32'hEDB88320;
                else
                    c = {1'b0, c[31:1]};
            end
            crc_step = c;
        end
    endfunction

    assign crc_next = crc_step(crc_reg, data_i);

    always @(posedge clk) begin
        if (crc_rst_i)
            crc_reg <= 32'hFFFFFFFF;
        else if (crc_en_i)
            crc_reg <= crc_next;
    end

    assign crc_early_o = ~crc_next;
    assign crc_o = ~crc_reg;

endmodule
