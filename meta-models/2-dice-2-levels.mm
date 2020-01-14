//# *dtmc
//# #mdp


//constants for the first level (and possibly the second level)
//# fix const maxS=13;
//# fix const maxD=6;
//# fix const maxDec=$maxS-$maxD/2;

//constants for the second level only
//# # const maxT=30;
//# # const maxDecT=$maxT-$maxD-1;


module dice1

//# state s : [0..$maxS] init 0;
//# state d : [1..$(maxD)] init 1;


//# for{s<=$(maxDec)} [] s=$s -> 0.5 : (s'=?) + 0.5 : (s'=?)
//# for{s<$maxS & s>=$(maxDec) & d+$(maxDec)=s} [] s=$s -> 0.5 : (s'=$maxS)&(d'=2*$d-1) + 0.5 : (s'=$maxS)&(d'=2*$d);
//# *[] s=$maxS -> 1:(s'=$maxS);
//# #[] s=$maxS&t=$maxT -> 1 : (s'=$maxS);

endmodule

rewards "first_level"
//# [] s<$maxS : 1;
endrewards

//# #module dice2

//# #state t : [0..$maxT] init 0;
//# #state e : [1..$(maxD)] init 1;


//# #for{t<=$(maxDecT)} [] t=$t -> 0.5 : (t'={g|g<$maxT&g!=$t}) + 0.5 : (t'={g|g<$maxT&g!=$t}) ;
//# #for{t<$maxT & t>=$(maxDecT) & e+$(maxDecT)=t} [] t=$t ->  0.5 : (t'=$maxT)&(e'=$e) + 0.5 : (t'=?)|(t'=$maxT)&(e'=?);
//# #[] s=$maxS&t=$maxT -> 1 : (t'=$maxT);

//# #endmodule

rewards "second_level"
//# #[] !(s=$maxS&t=$maxT) : 1;
endrewards
