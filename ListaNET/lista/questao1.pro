% Os Maias, livro, Eça de Queiroz, português, inglês, romance, escreveu, autor, nacionalidade, tipo, ficção 

livro(os_maias).
autor(os_maias, eca_de_queiroz).
nacionalidade(eca_de_queiroz, portugues).
tipo(os_maias, romance).
escreveu(eca_de_queiroz, os_maias).

tipo(os_maias, ficcao).

idioma(os_maias, portugues).
idioma(os_maias, ingles).

autores_portugueses_que_escrevem_romances(Autor) :-
    autor(Livro, Autor),
    nacionalidade(Autor, portugues),
    tipo(Livro, romance).

% a) 
    % 2 ?- escreveu(X, os_maias) . 

% b) ?- autores_portugueses_que_escrevem_romances(Autor)

% c) 






