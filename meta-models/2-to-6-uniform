//this is the meta-model for 2-to-6-uniform, but it can also be used for "binom-6-0.5" and "binom-6-0.333", just the value
//of maxS must be increased to 30 because the generated models contain much more states than the one generated
//for 2-to-6-uniform

dtmc

//# const maxS=13;
//# const maxD=6;
//# const maxDec=$maxS-$maxD/2-1;


module dice1

//# state s : [0..$maxS] init 0;
//# state d : [1..$(maxD)] init 1;


//# for{s<=$(maxDec)} [] s=$s -> 0.5 : (s'=?) + 0.5 : (s'=?)
//# for{s<$maxS & s>=$(maxDec) & d+$(maxDec)=s} [] s=$s -> 0.5 : (s'=$maxS)&(d'=2*$d-1) + 0.5 : (s'=$maxS)&(d'=2*$d);
//# [] s=$maxS -> 1:(s'=$maxS);

endmodule

rewards 
//# [] s<$maxS : 1;
endrewards
