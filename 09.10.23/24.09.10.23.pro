%2г(удаление элемента из дерева(09.10.23))
remove(nil, _, nil).
remove(tr(Key, Left, Right), Key, NewTree) :- !,
	ww(Left, Right, NewTree).
remove(tr(Key, Left, Right), Element, tr(Key, NewLeft, Right)) :-
	Element < Key,
	remove(Left, Element, NewLeft).
remove(tr(Key, Left, Right), Element, tr(Key, Left, NewRight)) :-
	Element > Key,
	remove(Right, Element, NewRight).
ww(nil, Right, Right).
ww(Left, nil, Left).
ww(tr(Key, Left, Right), OtherTree, tr(Key, Left, NewRight)) :-
	ww(Right, OtherTree, NewRight).