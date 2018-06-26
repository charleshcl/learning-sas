data work.ds1;
	amt = 4;
	if amt = 4 then word='FOUR';
	if amt = 7 then word='SEVEN';
	else amt=7;
run;

proc print data=work.ds1;
run;
