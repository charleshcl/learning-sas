data work.input;
	infile datalines;
	input deposit amount $;
	datalines;
1	10,000
2	$3.4K
3	$9.3e3
4	$7500
run;

data work.output;
	set work.input;
	num_amount=input(amount,comma9.);
run;

proc print data=work.output;
run;
