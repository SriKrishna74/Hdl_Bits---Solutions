// MY SOLUTION

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   );
    wire ab;
    wire cb;
    wire orr;
    assign ab=a&b;
    assign cb=c&d;
    assign orr=ab|cb;
    assign out=orr;
    assign out_n=~orr;
    

endmodule

// THEIR SOLUTION

module top_module (
	input a,
	input b,
	input c,
	input d,
	output out,
	output out_n );
	
	wire w1, w2;		// Declare two wires (named w1 and w2)
	assign w1 = a&b;	// First AND gate
	assign w2 = c&d;	// Second AND gate
	assign out = w1|w2;	// OR gate: Feeds both 'out' and the NOT gate

	assign out_n = ~out;	// NOT gate
	
endmodule
