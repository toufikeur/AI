%-------------------------
% Facts
%-------------------------

% Gender
male(abid).
male(prince).
male(sakib).
male(sopon).

female(riya).
female(ripa).
female(suma).

% Parent relationships
parent(abid, prince).
parent(abid, riya).

parent(prince, ripa).
parent(prince, sakib).

parent(riya, sopon).
parent(riya, suma).

%-------------------------
% Rules
%-------------------------

% Sibling: two people share a parent, and are not the same person
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Brother
brother(X, Y) :-
    sibling(X, Y),
    male(X).

% Sister
sister(X, Y) :-
    sibling(X, Y),
    female(X).

% Grandparent
grandparent(X, Y) :-
    parent(X, P),
    parent(P, Y).

% Grandfather
grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

% Grandmother
grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).
