% 2. Desenvolva um programa que permita dois jogadores jogarem o jogo da velha.
%    Utilize fatos e regras para verificar se houve um vencedor ou se o jogo terminou em empate.

% Fatos para representar o estado do tabuleiro
% vazio significa que a posição está desocupada
% x e o significado de que a posição foi ocupada pelo jogador X
% o e o significado de que a posição foi ocupada pelo jogador O



% estude, Alan é maluco e vai cobrar isso

estado(1, vazio).
estado(2, vazio).
estado(3, vazio).
estado(4, vazio).
estado(5, vazio).
estado(6, vazio).
estado(7, vazio).
estado(8, vazio).
estado(9, vazio).

% Regras para imprimir o tabuleiro
imprimir :- write(' 1 | 2 | 3 '), nl,
            write(' --------- '), nl,
            write(' 4 | 5 | 6 '), nl,
            write(' --------- '), nl,
            write(' 7 | 8 | 9 '), nl.



% Regras para verificar o vencedor
vencedor(Jogador) :-estado(1, Jogador), estado(2, Jogador), estado(3, Jogador) ; % Linhas
                    estado(4, Jogador), estado(5, Jogador), estado(6, Jogador) ;
                    estado(7, Jogador), estado(8, Jogador), estado(9, Jogador) ;
                    estado(1, Jogador), estado(4, Jogador), estado(7, Jogador) ; % Colunas
                    estado(2, Jogador), estado(5, Jogador), estado(8, Jogador) ;
                    estado(3, Jogador), estado(6, Jogador), estado(9, Jogador) ;
                    estado(1, Jogador), estado(5, Jogador), estado(9, Jogador) ; % Diagonais
                    estado(3, Jogador), estado(5, Jogador), estado(7, Jogador).

% Regras para jogar
jogar :- imprimir, turno(x).

turno(Jogador) :- write('Jogador '), write(Jogador), write(', é a sua vez. Escolha uma posição: '), read(Posicao),
                 (estado(Posicao, vazio) -> asserta(estado(Posicao, Jogador)), (
                     (vencedor(Jogador) -> write('Jogador '), write(Jogador), write(' venceu!'), nl, imprimir, reiniciar);
                     (empate -> write('O jogo terminou em empate!'), nl, imprimir, reiniciar)
                 ));
                 (write('Posição ocupada. Escolha outra posição.'), nl, turno(Jogador))).

empate :- \+estado(_, vazio).

reiniciar :- retractall(estado(_, _)), jogar.


% ?- jogar.