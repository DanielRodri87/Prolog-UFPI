% Definindo o operador ++
:- op(500, xfx, '++'). % '++' é um operador infix de fixidade xfx e prioridade 500

[] ++ 0.

[Cabeca | Corpo] ++ Soma :-
    Corpo ++ CorpoSoma,
    Soma is Cabeca + CorpoSoma.

