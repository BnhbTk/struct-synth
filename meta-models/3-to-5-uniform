dtmc

//# const maxS=12;
//# const maxD=5;
//# const maxTr=$maxS-$maxD/3;
//# var p : [1..3] ;

module dice1

//# state s : [0..$maxS] init 0;
//# state d : [1..$maxD] init 1;


//# for{s<$maxTr} [] s=$s -> inline{any(p),+}{1/3 : (s'={s|s<$maxS}) | (s'={s|s<$maxS})};
//# for{s=$maxTr} [] s=$s -> 1/3 : (s'=$maxS)&(d'=?) | (s'=?) + inline{p<3,+}{1/3 : (s'=$maxS)&(d'=$p)} ;
//# for{s>$maxTr&s<$maxS} [] s=$s -> inline{any(p),+}{1/3 : (s'=$maxS)&(d'=$p+2)} ;
//# [] s=$maxS -> 1:(s'=$maxS);


endmodule

rewards 
//# [] s<$maxS : 1;
endrewards
