%а добавление элемента в бинарное дерево поиска
insert(nil, X, tr(X, nil, nil)). 
insert(tr(X, L, R), X, tr(X, L, R)).
insert(tr(K, L, R), X, tr(K, L1, R)) :-
    X < K, 
		insert(L, X, L1).
insert(tr(K, L, R), X, tr(K, L, R1)) :-	
	X > K,
        insert(R, X, R1).
%б содержание числа в дереве
contains(tr(K, L, R), X) :-
	var(X), !,
	cw(tr(K, L, R), X).
contains(tr(X,_,_), X) :- !.
contains(tr(K,L,_), X) :-
    X < K, !,
        contains(L, X).  
contains(tr(K,_,R), X) :-
    X > K, !,
        contains(R, X).
cw(tr(K, _, _), X) :-
	X = K.
cw(tr(_, L, _), X) :-
		cw(L, X).
cw(tr(_, _, R), X) :-
		cw(R, X).