% Modele um quebra-cabeça de cores onde diferentes países têm cores diferentes, e as cores devem ser atribuídas de
% acordo com certas restrições. Crie regras que definam as relações entre as cores e países.


% base de conhecimento:
quebracabeca(brasil, verde).
quebracabeca(argentina, azul).
quebracabeca(china, vermelho).
quebracabeca(japao, branco).

vizinhos(brasil, argentina).
vizinhos(argentina, brasil).
vizinhos(china, japao).
vizinhos(japao, china).


cordiferente(X, Y) :-
    quebracabeca(X, CorX),
    quebracabeca(Y, CorY),
    CorX \= CorY.


:- vizinhos(X, Y), cordiferente(X, Y).




% 1 ?- quebracabeca(brasil, X).