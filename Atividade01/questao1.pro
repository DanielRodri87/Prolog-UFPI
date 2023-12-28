progenitor(cicero, daniel).
progenitor(daniel, maria_rita).
progenitor(rita, maria_rita) .
progenitor(selma, jasmine) .
progenitor(donizete, jasmine) .
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
casado(rita, daniel) .
casado(selma, donizete) .
casado(deusivane, cicero) .
casado(cleide, antonio) .

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
    

prima(Prima, Pessoa) :-
    progenitor(Pai1, Pessoa),
    irma(Pai1, Pai2),
    progenitor(Pai2, Prima),
    feminino(Prima),
    Pessoa \= Prima.

cunhado(Cunhado, Pessoa) :-
    irmao(Cunhado, Conjuge),
    casado(Pessoa, Conjuge),
    masculino(Cunhado).
    Cunhado \= Pessoa.

cunhada (Cunhada, Pessoa) :-
    irma(Cunhada, Conjuge),
    casado(Pessoa, Conjuge),
    feminino(Cunhada).
    Cunhada \= Pessoa.

sogra(Sogra, Pessoa) :-
    progenitor(Sogra, Conjuge),
    casado(Pessoa, Conjuge),
    feminino(Sogra).
