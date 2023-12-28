% Lista inicial de países da América do Sul
paises_america_sul([brasil, argentina, colombia, peru, chile, venezuela]).

remover_pais(Pais, ListaEntrada, ListaSaida) :-
    delete(ListaEntrada, Pais, ListaSaida).

% Predicado para adicionar um país à lista
adicionar_pais(Pais, ListaEntrada, ListaSaida) :-
    append(ListaEntrada, [Pais], ListaSaida).

% Exemplo de uso:
% 1. Remover a Venezuela
% ?- paises_america_sul(Paises),
%    remover_pais(venezuela, Paises, PaisesSemVenezuela),
%    write('Lista sem Venezuela: '), write(PaisesSemVenezuela), nl.


% 2. Adicionar a Dinamarca
% ?- paises_america_sul(Paises),
%    adicionar_pais(dinamarca, Paises, PaisesComDinamarca),
%    write('Lista com Dinamarca: '), write(PaisesComDinamarca), nl.
