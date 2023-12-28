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

pai(X, Y) :-
    progenitor(X, Y),
    masculino(X).

mae(Mae, Filho) :-
    progenitor(Mae, Filho),
    feminino(Mae).

filho(Filho, Pessoa) :-
    progenitor(Pessoa, Filho).

avo(Avo, Neto) :-
    progenitor(Avo, Filho),
    progenitor(Filho, Neto),
    masculino(Avo).

avo(Avo, Neto) :-
    progenitor(Avo, Filha),
    progenitor(Filha, Neto),
    feminino(Avo).

antepassado(Antepassado, Pessoa) :-
    progenitor(Antepassado, Pessoa).

antepassado_geracao(Antepassado, Pessoa, 0) :-
    progenitor(Antepassado, Pessoa).
antepassado_geracao(Antepassado, Pessoa, Geracao) :-
    Geracao > 0, progenitor(Pai, Pessoa), GeracaoMenosUm is Geracao - 1, antepassado_geracao(Antepassado, Pai, GeracaoMenosUm).




