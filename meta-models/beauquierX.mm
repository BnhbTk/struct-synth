mdp
//# const m=X;
//# var valP:[0..$m];
//# var valOP:[0..$m];
//# const n=5;
//# var nbP:[2..5];

//# var a:[1..4];
module process1

//# state p1:[0..$m];
//# state d1:[0..1];
//# for{any(valP)&any(valOP)} [] p1=$valP & d1=d$n & p$n=$(valOP) -> 
                   0.5 : (p1'=?)&(d1'=d1) | (p1'=?)&(d1'=1-d1) + 
                   0.5 : (p1'=?)&(d1'=d1) | (p1'=?)&(d1'=1-d1);
endmodule
//# for{any(nbP)&nbP+-1=a} module process$(nbP) = 
      process1 [ p1=p$(nbP), p$n=p$a, d1=d$(nbP), d$n=d$a ] endmodule
//# formula num_tokens = inline{any(a)&a+1=nbP,+}{(p$a=p$(nbP)?1:0)} 
                           + (p$n=p1?1:0);

