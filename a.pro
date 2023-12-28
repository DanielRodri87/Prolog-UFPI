progenitor(maria, jose). % Maria é progenitor de jose.
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).
masculino(joao). % Joao é do sexo masculino.
masculino(jose).
masculino(jorge).
feminino(maria). % Maria é do sexo feminino.
feminino(ana).
feminino(julia).
feminino(iris).
filho(Y, X) :- % Y é filho de X se
    progenitor(X,Y). % X é progenitor de Y.
mae(X,Y) :- % X é mae de Y se
    progenitor(X, Y), % X é progenitor de Y e
    feminino(X). % X é do sexo feminino.
avo(X, Z) :- % X é avo de Z se
    progenitor(X, Y), % X é progenitor de Y e
    progenitor(Y, Z). % Y é progenitor de Z.
irma(X, Y) :- % X é irma de Y se
    progenitor(Z, X), % X tem um progenitor, Z que
    progenitor(Z, Y), % é também progenitor de Y e
    feminino(X), % X é do sexo feminino e
    X =/ Y % X e Y são diferentes.
irmao(X, Y) :- % X é irma de Y se
    progenitor(Z, X), % X tem um progenitor, Z que
    progenitor(Z, Y), % é também progenitor de Y e
    masculino(X), % X é do sexo feminino e
    X =/ Y % X e Y são diferentes.
antepassado(X, Z) :- % X é antepassado de Z se
    progenitor(X, Z). % X é progenitor de Z. [pr1]
antepassado(X, Z) :- % X é antepassado de Z se
    progenitor(X, Y), % X é progenitor de Y e
    antepassado(Y, Z). % Y é antepassado de Z. [pr2]
tio(X, Y) :- % X é tio de Y se
    irma(X, Z), % X tem uma irmã, Z, e
    progenitor(Z, Y). % Z é progenitor de Y