likes(sakib, cricket).
likes(sakib, football).
likes(sakib, rugby).

likes(riad, football).
likes(riad, rugby).

likes(sabbir, flower).
likes(sabbir, custard).
likes(sabbir, fruits).

% Rule 1
likes(sabbir, X) :- likes(X, football).

% Rule 2
likes(sakib, Y) :- likes(sabbir, Y).
