data work.ds1;
/*	infile '/folders/myfolders/SASCrunch/cars.csv' */
	infile '\\Mac\Home\SASUniversityEdition\myfolders\sasuser.v94\testdata001.txt' end=eof;
	input id var1 $;
	newhire=eof;
run;
proc print data=work.ds1;
run;
