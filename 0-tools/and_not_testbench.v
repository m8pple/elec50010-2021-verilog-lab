module and_not_testbench();
    logic a;
    logic b;
    logic c;
    logic d;

    initial begin
        /* INSERT WAVEFORM COMMANDS */

        a=0;
        b=0;
        #1; // Delay one timeunit
        /* INSERT $display HERE */
        /* INSERT assert HERE */
        
        a=0;
        b=1;
        #1; // Delay one timeunit

        a=1;
        b=0;
        #1; // Delay one timeunit

        a=1;
        b=1;
        #1; // Delay one timeunit
    end

    and_gate n1(.a(a), .b(b), .r(c));
    not_gate n2(.a(c), .r(d));
endmodule
