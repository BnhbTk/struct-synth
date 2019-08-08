//# mdp


//# fix const maxS=5;


module dice1

s : [0..5] init 0;
d : [1..3] init 1;


[] s=0  -> 0.5 : (s'=1) +0.5 : (s'=3) ;
[] s=1  -> 0.5 : (s'=5)&(d'=1) +0.5 : (s'=5)&(d'=2) ;
[] s=2  -> 0.5 : (s'=5)&(d'=3) +0.5 : (s'=2) ;
[] s=3  -> 0.5 : (s'=0) +0.5 : (s'=5)&(d'=3) ;
[] s=4  -> 0.5 : (s'=5) +0.5 : (s'=5)&(d'=3) ;
//# [reset] s=$maxS&t<$maxT -> 1:(s'=0)&(d'=1);
//# [done] s=$maxS&t=$maxT -> 1:(s'=$maxS);

endmodule

rewards "first_level"
[] s<5 : 1;
endrewards


//# const maxT=30;
//# const maxTM2=$maxT-6;
//# var aux:[0..5];

//# module dice2

//# state t : [0..$maxT] init 0;
//# state e : [1..6] init 1;
 
//# for{t<$(maxTM2)} [reset] s=$maxS&t=$t&d=1 -> 1:(t'=?);
//# for{t<$(maxTM2)} [reset] s=$maxS&t=$t&d>1 -> 1:(t'=?);

//# for{t>=$(maxTM2)&t<$maxT&aux+$(maxTM2)=t} [reset] s=$maxS&t=$t&d=1 -> 1:(t'=$maxT)&(e'=$aux+1);
//# for{t>=$(maxTM2)&t<$maxT&aux+$(maxTM2)=t} [reset] s=$maxS&t=$t&d>1 -> 1:(t'=?)|(t'=$maxT)&(e'=?);
//# [done] t=$maxT&s=$maxS -> 1:(t'=$maxT);


  
//# endmodule
//# var valD:[1..3];

//# rewards "second_level"
//# [] s<$maxS : 1;
//# endrewards

