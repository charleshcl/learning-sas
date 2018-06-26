data ap;
	airport='ord';
	if (airport='ord') then city='chicago';
run;

proc contents data=ap;
run;

