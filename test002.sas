data work.ds1;
	length id 4;
	length var1 $ 5;
	input id var1 $;
	datalines;
1 abcdef
5 z
run;

proc contents data=work.ds1;
run;

data work.ds2;
	length id 6;
	length var1 $ 25;
	input id var1 $;
	datalines;
1 s
3 b
run;

proc contents data=work.ds2;
run;

data work.output;
	length id 3;
	set work.ds1 work.ds2;
	by id;
	var1 = concat(' ', var1, var1);
run;

proc contents data=work.output;
run;

proc  print data=work.output;
run;