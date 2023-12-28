
:- op(500, xfx, '::').
X :: Y :- string_concat(X, Y, Z), write(Z).

