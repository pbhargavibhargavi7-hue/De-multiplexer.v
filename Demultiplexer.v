module demux1to4 (
    input  wire       din,
    input  wire [1:0] sel,
    output reg        y0,
    output reg        y1,
    output reg        y2,
    output reg        y3
);

    always @(*) begin

        // Default: all outputs are 0
        y0 = 1'b0;
        y1 = 1'b0;
        y2 = 1'b0;
        y3 = 1'b0;

        case (sel)

            2'b00: y0 = din;
            2'b01: y1 = din;
            2'b10: y2 = din;
            2'b11: y3 = din;

            default: begin
                y0 = 1'b0;
                y1 = 1'b0;
                y2 = 1'b0;
                y3 = 1'b0;
            end

        endcase

    end

endmodule