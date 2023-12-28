% Árvore Genealógica:
% Represente uma árvore genealógica em Prolog, incluindo fatos para pessoas e regras para definir
% relações familiares (pai, mãe, avô, etc.). Faça consultas para obter informações sobre parentescos.

pai(jose, cicero).
mae(raimunda, cicero).
pai(cicero, daniel).
mae(deusivane, daniel).
pai(cicero, selma).
mae(deusivane, selma).
pai(antonio, rita).
mae(cleide, rita).

irmao(Irmao, Pessoa) :-
    pai(Pai_Mae, Pessoa),
    pai(Pai_Mae, Irmao),
    Pessoa \= Irmao.


avo(Avo, Pessoa) :-
    pai(Avo, X),
    pai(X, Pessoa),
    Avo \= Pessoa.
