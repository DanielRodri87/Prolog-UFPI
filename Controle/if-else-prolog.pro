% % IF-THEN-ELSE

% ifThenElse(X, Y, _) ¬X, !, Y.
% ifThenElse(_,_, Z) ¬Z.


% % Maria gosta de todos os animais, menos de cobra
% gosta(maria, X) ¬animal(X).

% % Se X é uma cobra
%     % Então não é verdade que maria gosta de x
%     % Se não se X é um animal, então maria gosta de x.

gosta(maria, X) :-
    cobra(X), !, fail.

gosta(maria, X) :-
    animal(X).
    