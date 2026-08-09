`timescale 1ns/1ps

module demux1to4_tb;

    reg din;
    reg [1:0] sel;

    wire y0;
    wire y1;
    wire y2;
    wire y3;

    // Instantiate the 1:4 DEMUX
    demux1to4 uut (
        .din(din),
        .sel(sel),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );

    initial begin

        // Input data
        din = 1'b1;

        // Select output 0
        sel = 2'b00;
        #10;

        // Select output 1
        sel = 2'b01;
        #10;

        // Select output 2
        sel = 2'b10;
        #10;

        // Select output 3
        sel = 2'b11;
        #10;

        // Test with input 0
        din = 1'b0;
        sel = 2'b00;
        #10;

        $finish;

    end

    // Display simulation values
    initial begin
        $monitor(
            "Time=%0t | din=%b | sel=%b | y0=%b | y1=%b | y2=%b | y3=%b",
            $time, din, sel, y0, y1, y2, y3
        );
    end

    // Generate waveform
    initial begin
        $dumpfile("demux.vcd");
        $dumpvars(0, demux1to4_tb);
    end

endmodule