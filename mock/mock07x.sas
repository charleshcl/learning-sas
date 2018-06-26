data work.input;
	infile datalines missover;
	input deposit date $ ;
	datalines;
1	10,000
2	
3	$9.3e3
4	$7500
run;

data work.output;
	set work.input;
	where date is missing;
	today = today();
run;

proc contents data=work;
run;

