% ---------------------------------
% Facts
% ---------------------------------

brother(rashid, tamim).
brother(rashid, rishab).

sister(champa, tamim).
sister(champa, rishab).

man(rashid).
man(tamim).
man(rishab).

woman(champa).

% ---------------------------------
% Rules
% ---------------------------------

% Sibling rule (share same brother or sister)
sibling(X, Y) :-
    brother(X, Y).
sibling(X, Y) :-
    sister(X, Y).
sibling(X, Y) :-
    brother(Y, X).
sibling(X, Y) :-
    sister(Y, X).

% Find brother
is_brother(X, Y) :-
    sibling(X, Y),
    man(X).

% Find sister
is_sister(X, Y) :-
    sibling(X, Y),
    woman(X).
