progenitor(cicero, daniel).
progenitor(deusivane, daniel).
progenitor(cicero, selma).
progenitor(deusivane, selma).
progenitor(antonio, rita).
progenitor(cleide, rita).
progenitor(antonio, maria).
progenitor(cleide, maria).
progenitor(teste, donizete).
casado(daniel, rita) .
casado(donizete, selma) .
casado(cicero, deusivane) .
casado(antonio, cleide) .

masculino(cicero).
masculino(daniel).
masculino(antonio).

feminino(deusivane).
feminino(selma).
feminino(cleide).
feminino(rita).
feminino(teste).

irmao(Irmao, Pessoa) :-
    progenitor(Pai_Mae, Pessoa),
    progenitor(Pai_Mae, Irmao),
    masculino(Irmao),
    Pessoa \= Irmao.

irma(Irma, Pessoa) :-
    progenitor(Pai_Mae, Pessoa),
    progenitor(Pai_Mae, Irma),
    feminino(Irma),
    Pessoa \= Irma.

tio(Tio, Sobrinho) :-
    progenitor(Pai_Mae, Sobrinho),
    irmao(Tio, Pai_Mae),
    masculino(Tio).

tia(Tia, Sobrinho) :-
    progenitor(Pai_Mae, Sobrinho),
    irma(Tia, Pai_Mae),
    feminino(Tia).

primo(Primo, Pessoa) :-
    progenitor(Pai1, Pessoa),
    progenitor(Pai2, Primo),
    irmao(Pai1, Pai2),
    masculino(Primo),
    Pessoa \= Primo.

prima(Prima, Pessoa) :-
    progenitor(Pai1, Pessoa),
    progenitor(Pai2, Prima),
    irma(Pai1, Pai2),
    feminino(Prima),
    Pessoa \= Prima.

cunhado(Cunhado, Pessoa) :-
    irmao(Cunhado, Conjuge),
    progenitor(Conjuge, Pessoa),
    masculino(Cunhado),
    Pessoa \= Cunhado.

cunhada(Cunhada, Pessoa) :-
    irma(Cunhada, Conjuge),
    progenitor(Conjuge, Pessoa),
    feminino(Cunhada),
    Pessoa \= Cunhada.

sogra(Sogra, Pessoa) :-
    progenitor(Sogra, Conjuge),
    casado(Pessoa, Conjuge),
    feminino(Sogra).




