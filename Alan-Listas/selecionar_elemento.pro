% Seleção de elementos em uma lista

% Exemplo:

enesimo(1, [X|_], X).
enesimo(N, [_|Y], X) :-
    enesimo(M, Y, X),
    N is M + 1.

% Exemplo de busca:
% ?- enesimo(3, [10,20,30,40,50], X).
