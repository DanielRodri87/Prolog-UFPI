forma(retangulo(Larg, Altu)).
forma(quadrado(Lado)) :-
    forma(retangulo(Lado, Lado)).
forma(circulo(Raio)).
forma(elipse(EixoMa, EixoMe)).