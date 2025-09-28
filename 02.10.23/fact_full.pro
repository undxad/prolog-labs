fact1(N,K) :-
N>=1,
vsp1(N,1,K).
vsp1(1,New,New).
vsp1(N,New,K) :-
N>0,
N1 is N - 2,
New1 is New * N,
vsp1(N1,New1,K).

fact_full(N,F) :- var(N), integer(F),
fact_iter(1,1,F,N).
fact_iter(K, Prod, Prod, K).
fact_iter(K,Prod,F,N) :- Prod < F, 
K1 is K+1,
 Prod1 is Prod*K1, 
 fact_iter(K1,Prod1,F,N).