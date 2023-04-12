module full_adder(a,b,c0,s,c1);
	input a,b,c0;
	output wire s,c1;
	wire tmp1,tmp2,tmp3;
	half_adder ha1(a,b,tmp1,tmp2);
	half_adder ha2(tmp1,c0,s,tmp3);
	assign c1=tmp2|tmp3;
endmodule

