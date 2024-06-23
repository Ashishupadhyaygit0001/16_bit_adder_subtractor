`timescale 1ns / 1ps
`include "Addersub.v"

module testbench();
    reg [15:0] a, b;
    reg M;
    wire [15:0] s;
    wire co;
    
    // instantiation
    
    Addersub p(a, b, M, s, co);

    initial begin
        $dumpfile("Add_sub.vcd");
        $dumpvars(0, testbench); // Corrected module name

        M = 0;
        a = 16'd0;
        b = 16'd0;

        #2
        M = 0;
        a = 16'd5;
        b = 16'd2;

        #2
        M = 1;
        a = 16'd1;
        b = 16'd2;

        #2
        M = 1;
        a = 16'd5;
        b = 16'd2;

        #2
        M = 0;
        a = 16'd15;
        b = 16'd20;

        #2
        M = 0;
        a = 16'd55;
        b = 16'd28;

        #2
        M = 1;
        a = 16'd58;
        b = 16'd92;

        #2
        M = 1;
        a = 16'd59;
        b = 16'd225;

        #2
        M = 0;
        a = 16'd205;
        b = 16'd200;

        #2
        M = 1;
        a = 16'd55;
        b = 16'd68;

        #2
        M = 0;
        a = 16'd85;
        b = 16'd27;

        #2
        M = 1;
        a = 16'd62;
        b = 16'd23;

        #2
        M = 0;
        a = 16'd36;
        b = 16'd98;

        #2
        M = 1;
        a = 16'd25;
        b = 16'd28;
    end

    initial
        #35 $finish;
endmodule
