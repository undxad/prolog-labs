dfact(0, 1).
dfact(1, 1).
dfact(N, F) :-
    N > 1,
    N mod 2 =:= 0,
    N1 is N - 2,
    dfact(N1, Temp),
    F is N * Temp.
dfact(N, F) :-
    N > 1,
    N mod 2 =:= 1,
    N1 is N - 2,
    dfact(N1, Temp),
    F is N * Temp.