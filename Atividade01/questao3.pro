nasceu(joao, pelotas) .
nasceu(jean, paris) .
fica(pelotas, rio_grande_do_sul) .
gaucho(X) :-
    nasceu(X, Y),
    fica(Y, rio_grande_do_sul) .


