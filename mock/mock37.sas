data one;
	input x char1 $;
	datalines;
111 A
158 B
329 C
644 D
;

data two;
	input x char2 $;
	datalines;
111 #
538 F
644 G
;

data both;
	set one two;
	by x;
run;

proc print data=both;
run;
