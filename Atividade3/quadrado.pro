entrada(linha1(1,2), linha2(2,3), linha3(3,4), linha4(4,1))

quadrado(linha1(X1, Y1), linha2(X2, Y2), linha3(X3, Y3), linha4(X4, Y4)) :-
    conecta(X1, Y1, X2, Y2) ,
    conecta(X2, Y2, X3, Y3) ,
    conecta(X3, Y3, X3, Y3) ,
    conecta(X4, Y4, X4, Y4) ,

    % A = 1, B = 2