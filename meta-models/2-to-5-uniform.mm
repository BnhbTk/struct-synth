dtmc

//# const maxS=13;
//# const maxD=5;
//# const maxDec=$maxS-$maxD/2;


module dice1

//# state s : [0..$maxS] init 0;
//# state d : [1..$(maxD)] init 1;


//# for{s<$(maxDec)} [] s=$s -> 0.5 : (s'=?) + 0.5 : (s'=?)
//# for{s=$(maxDec)} [] s=$s -> 0.5 : (s'=$maxS)&(d'=?)| (s'=?) + 0.5 : (s'=$maxS)&(d'=1);
//# for{s<$maxS & s>$(maxDec) & d+$(maxDec)=s} [] s=$s -> 0.5 : (s'=$maxS)&(d'=2*$d) + 0.5 : (s'=$maxS)&(d'=2*$d+1);
//# [] s=$maxS -> 1:(s'=$maxS);

endmodule

rewards 
//# [] s<$maxS : 1;
endrewards
