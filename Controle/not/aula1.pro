gosta(maria, X) :-
    animal(X), not cobra(X).

diferente(X, Y) :-
    not (X = Y).

% ? - gosta(maria, X).

% Cuidado: o not não é uma negação lógica, mas sim um operador de negação

% a hora certa de usar o cut: quando você quer que o prolog não tente mais

