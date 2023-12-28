% 1° questão da prova

% Crie um programa que faça a soma de todos os elementos
% de uma lista de inteiros.
% Consulta: ?- soma([1,2,3, 4],5).
% S = 10

soma([], 0).
soma([H|T], S) :-
    % exiba o resultado da soma
    soma(T, S1),
    S is H + S1.

    


% ERREI


    


