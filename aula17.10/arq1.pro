progenitor(cicero, daniel).
progenitor(deusivane, daniel).
progenitor(cicero, selma).
progenitor(deusivane, selma).
progenitor(antonio, rita).
progenitor(cleide, rita).
progenitor(antonio, maria).
progenitor(cleide, maria).
progenitor(teste, donizete).

masculino(cicero).
masculino(daniel).
masculino(antonio).

feminino(deusivane).
feminino(selma).
feminino(cleide).
feminino(rita).
feminino(teste).

irmao(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    masculino(X),
    X \== Y.
irma(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    feminino(X),
    X \== Y.

% Fatos, Regras e Consultas
