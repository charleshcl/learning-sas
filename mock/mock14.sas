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
	year = 2018;
	do i=1 to 10 while (year < 2020);
		year+1;
	end;
	output;
run;

proc print data=work.output;
run;

