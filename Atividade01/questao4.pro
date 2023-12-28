corpo_celeste(estrela).
corpo_celeste(planeta).
corpo_celeste(cometa).

corpo_celeste_venus :-
    corpo_celeste(planeta),
    \+ corpo_celeste(estrela),
    \+ possui_cauda(venus).

possui_cauda(cometa) :- perto_do_sol(cometa).
perto_do_sol(venus).