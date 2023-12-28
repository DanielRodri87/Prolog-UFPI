:- op(500, xfx, '::').

Numero :: [Abaixo, Acima] :-
    Numero >= Abaixo,
    Numero =< Acima.
