data ap;
	date=put('13mar00'd,date9.);
run;

proc contents data=ap;
run;

proc print data=ap;
run;

