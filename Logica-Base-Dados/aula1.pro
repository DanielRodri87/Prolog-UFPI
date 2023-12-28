% banco de dados com prolog. O.O


% uma base de dados pode ser entendida como uma coleção de dados inter-relacionadas, armazenada de forma 
% independente programa que a utiliza;

% em prolog, uma base de dados é um conjunto de fatos, não havendo, entretanto, nada que impeça a linguagem
% de rabalhar diretamente com base de dados convencionais;

% prolog possui uma excelente interface para lidar com base de dados relacionais.

% imagine que é uma tabela de dados, onde cada linha é um fato e cada coluna é um atributo.

pessoa(marcelo, m, luiz, gilda).
pessoa(luiz, m, alfredo, maria).

carro(fusca, vw, 1970, gilda).

% quem tem um fusca?
% pessoa(X, _, _, _), carro(fusca, _, _, X).
% ? - pessoa(X, _, _, _), carro(fusca, _, _, X).

% usar o nil para representar dados que não existem.

