dtmc

//# const maxS=7;
//# const maxD=3;
//# const maxDec=$maxS-$maxD;
//# const maxDecM1=$(maxDec)-1;


module dice

//# state s : [0..$maxS] init 0;
//# state d : [1..$(maxD)] init 1;


//# for{s<$(maxDec)} [] s=$s -> 0.5 : (s'= ?) + 0.5 : (s'=?);
//# for{s>=$(maxDec) & s<$maxS & d+$(maxDecM1)=s} [] s=$s -> 0.5 : (s'= $maxS)&(d'=$d) + 0.5 : (s'=?);
//# [] s=$maxS -> 1:(s'=$maxS);

endmodule



rewards 
//# [] s<$maxS : 1;
endrewards
