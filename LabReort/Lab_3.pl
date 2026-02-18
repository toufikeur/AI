% ------------------------------------
% Program: Addition of Two Numbers
% ------------------------------------

% Rule for addition
add(X, Y, Result) :-
    Result is X + Y.

% Main program
start :-
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),
    add(X, Y, Result),
    write('Sum is: '),
    write(Result), nl.
