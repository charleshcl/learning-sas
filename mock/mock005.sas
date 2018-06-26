data one;
	input eyes hair $ ;
	datalines;
1 a 
1 b 
1 c
3 a 
3 b 
3 c 
2 c 
3 d 
3 d 
3 e 
1 d 
1 e 
2 a 
2 b 
2 d 
2 e 
;

proc sort data=one out=two;
	by eyes hair;
run;

proc freq data=two;
	table eyes;
	by hair;
run;
