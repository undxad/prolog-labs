%2
%делаем список пар для дальнейшей обработки
makepairs([], [], []).
makepairs([H1|Lst1], [H2|Lst2], [H1-H2|Res]) :-
		makepairs(Lst1, Lst2, Res).
%основная функция
choosePairs([], [], _, []).
choosePairs(X,Y,Pred,Z) :-
	var(Z), !,
	makepairs(X,Y,W),
	cpw(W,Pred,Z).
choosePairs(X,Y,Pred,Z1) :-
	nonvar(Z1),
	makepairs(X,Y,W),
	msort(W,List),
	msort(Z1,Z),
	cpw(List, Pred,Z).
%функция реализующая выполнение условия Pred
cpw([], _, []).
cpw([A-B|Lst], Pred, Res1) :-
	call(Pred, A, B) ->
		cpw(Lst,Pred,Res), Res1=[A-B|Res]
		;
		cpw(Lst,Pred,Res1).