data sales;
	input id $ name $CHAR10.;
	datalines;
1 star
2 wow
3 david
;

data employee;
	input id $ name $CHAR15.;
	datalines;
1 john
2 sarach
4 unix
;

data both;
	length name $20;
	merge sales employee;
	by id;
run;


proc contents data=sales;
run;
proc contents data=employee;
run;
proc contents data=both;
run;

