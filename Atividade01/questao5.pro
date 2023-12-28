arco(a, b, 3).
arco(b, c, 5).
arco(c, d, 4).
arco(d, e, 2).
arco(e, f, 4).
arco(f, a, 5).
arco(a, d, 2).
custo(X, Y, L) :-
 arco(X, Y, L).
custo(X, Y, L) :-
 arco(X, Z, Custo1), custo(Z, Y, Custo2), L is Custo1 + Custo2.


