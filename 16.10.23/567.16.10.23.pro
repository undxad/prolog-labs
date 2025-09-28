:- initialization(consult('kinship.pro')).
%5 число детей
num_of_children(X, N) :-
  (male(X);
  female(X)),
  findall(Z, parent(X,Z), Ch),
  length(Ch,N).
%6 число племянников
nephews(X, Y) :-
	(male(Y);
	female(Y)),
	findall(Z, nw(Y, Z), Res),
	sort(Res, X).
nw(A, X) :-
	parent(Papa, A), %практически такой же предикат,
	parent(Papa, B), %как во 2 и 4 задании
	male(Papa),
	parent(Mama, A),
	parent(Mama, B),
	female(Mama),
	A \= B,
	parent(B, X).
%7 семья?
family([Father, Mother | Children]) :-
	setof(Child, cw(Father, Mother, Child), Children).
cw(X, Y, Z) :-
	parent(X, Z),
	male(X),
	parent(Y, Z),
	female(Y).