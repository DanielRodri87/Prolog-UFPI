tio(X, Y) :- % X é tio de Y se
    irma(X, Z), % X tem uma irmã, Z, e
    progenitor(Z, Y). % Z é progenitor de Y