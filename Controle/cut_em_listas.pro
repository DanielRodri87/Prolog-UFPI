membro(X, [X|_]).
membro(X, [_|Y]) :-
    membro(X, Y).

% Essa solução não determinística. Logom se X ocorrer várias vezes qualquer ocorrência pode ser enconrada.
% Para tornar esse programa determinístico, ele deve encontrar a primeira ocorrÊncia de X. Vejamos a modificação da relação

membro(X, [X|_]) :-
    !. % Se estiver na cabeça, não precisa procurar mais no corpo
membro(X, [_|Y]) :-
    membro(X, Y).

% NEsse exemplo eu adiciono um elemento, mas se esse elemento já estiver.
adicionar(X, L, L) :-
    membro(X, L),
    !.
adicionar(X, L, L1).