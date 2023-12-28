quadrado(retangulo(point(X1, Y1), point(X2, Y2))) :-
    Lag is X2 - X1,
    Alt is Y2 - Y1,
    Lag = Alt,
    X1 >= 0, X2 =< 1280,
    Y1 >= 0, Y2 =< 1024.

exemplo1 :-
    quadrado(retangulo(point(10, 10), point(20, 20))).

exemplo2 :-
    quadrado(retangulo(point(5, 10), point(20, 25))).

exemplo3 :-
    quadrado(retangulo(point(1000, 1000), point(1300, 1100))).
