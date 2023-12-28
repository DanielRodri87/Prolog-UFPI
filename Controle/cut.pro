% "cut" - que se destina a prevenir a execução do backtracking quando este não for desejado.

% Ele basicamente fala para o Prolog que, quando chegar naquele ponto, ele não deve tentar encontrar outras soluções para o predicado que está sendo executado.

% Base de conhecimento
animal(leao).
animal(elefante).
animal(pinguim).

% Predicado para verificar se um animal é mamífero
mamifero(X) :-
    animal(X),
    mamifero_verdadeiro(X),  % Chamada a outro predicado para detalhes específicos de mamíferos
    !.  % Cut para evitar backtracking
% Predicado para detalhes específicos de mamíferos
mamifero_verdadeiro(leao).

mamifero_verdadeiro(elefante).

