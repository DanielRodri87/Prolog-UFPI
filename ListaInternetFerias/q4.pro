pessoa(daniel, 18).
pessoa(rita, 20).
pessoa(chico, 80).
pessoa(reinan, 4).
pessoa(alex, 13).

pessoa(X, Y) :-
    Y < 0,
    write('Idade inválida').




pessoa(X, Y) :-
    Y < 12,
    write('Criança').
    
pessoa(X, Y) :-
    Y >= 12,
    Y < 18,
    write('Adolescente').

pessoa(X, Y) :-
    Y >= 18,
    Y < 61,
    write('Adulto').

pessoa(X, Y) :-
    Y >= 60,
    write('Idoso').