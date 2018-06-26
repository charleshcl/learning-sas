data work.ds;
	word1='CATFISH';
	word2='FISH';
	word3='NIP';
	word1=tranwrd(word1,word2,word3);
run;

proc contents data=work.ds;
run;
