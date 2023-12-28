max(X, Y, X) :-
    X >= Y,
    !. % se ele é maior, não precisa testar o outro caso
max(X, Y, Y) :-
    X < Y.
