data alimentoRenda;
input x y;
datalines;
100 60
200 80
200 90
400 110
400 160
;
run;

data predict;
input x;
datalines;
2000
1000
;
run;

proc corr data=alimentorenda;
run;

proc reg data=alimentorenda outest=regModel;
model y=x;
print all
run; 
proc score data =predict score=regModel out=saida type=parms predict;
var x;
run;


data TaxaConsumo;
input x y;
datalines;
8 1
7 1
6 2
5 4
;
run;

data predict;
input x y;
datalines;
4 5
;
run;

proc corr data=TaxaConsumo;
run;

proc reg data=TaxaConsumo outest=regModel;
model y=x;
print all
run; 
proc score data =predict score=regModel out=saida type=parms predict;
var x;
run;





data QtdPreco;
input x y;
datalines;
0 4
1 2
2 2
3 1
4 1
;
run;

data predict;
input x;
datalines;
4.5
;
run;

proc corr data=QtdPreco;
run;

proc reg data=QtdPreco outest=regModel;
model y=x;
print all
run; 
proc score data =predict score=regModel out=saida type=parms predict;
var x;
run;