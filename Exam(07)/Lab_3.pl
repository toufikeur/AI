
% Facts
population(china, 10000).
population(india, 90000).
population(usa, 800000).
population(bangladesh, 1200000).

area(china, 10000).
area(india, 6000).
area(usa, 4000).
area(bangladesh, 10000).

% Rule to calculate density
density(Country, Density) :-
    population(Country, P),
    area(Country, A),
    A \= 0,
    Density is P / A.
