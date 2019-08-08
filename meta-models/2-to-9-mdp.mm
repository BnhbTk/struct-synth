//# *dtmc
//# #mdp
//# fix const maxS=7;
module dice1
//# state s : [0..$maxS] init 0 ;

//# state d : [1..3] init 1;
//# for{s<$maxS} [] s=$s -> 0.5 : (s'=$maxS)&(d'=?)| (s'=?) + 
                            0.5 : (s'=$maxS)&(d'=?)| (s'=?);

//# *[] s=$maxS -> 1:(s'=$maxS);
//# #[reset] s=$maxS -> 1:(s'=0)&(d'=1);
//# #[done] s=$maxS&t=$maxT -> 1:(s'=$maxS);
endmodule
rewards "first_level"
//# [] s<$maxS : 1;
endrewards
//# #const maxT=30;
//# #var aux:[1..4];
//# #var valD:[1..3];
//# #module dice2
//# #state t : [0..$maxT] init 0;
//# #state e : [1..9] init 1;
//# #for{t<$maxT&any(valD)} [reset] s=$maxS&t=$t&d=$valD -> 1:(t'=?)|
                                                   (t'=$maxT)&(e'=?);
//# #[done] t=$maxT&s=$maxS -> 1:(t'=$maxT);
//# #endmodule
//# #rewards "second_level"
//# #[] s<$maxS : 1;
//# #endrewards
