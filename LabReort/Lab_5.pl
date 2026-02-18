% ----------------------------------------
% Program: Reverse a Given Number
% ----------------------------------------

% Main reverse predicate
reverse_number(Number, Reverse) :-
    Number >= 0,
    reverse_helper(Number, 0, Reverse).

% Helper predicate (Recursion)
reverse_helper(0, Reverse, Reverse).

reverse_helper(Number, Acc, Reverse) :-
    Number > 0,
    Digit is Number mod 10,
    NewAcc is Acc * 10 + Digit,
    NewNumber is Number // 10,
    reverse_helper(NewNumber, NewAcc, Reverse).

% Start program with user input
start :-
    write('Enter a number: '),
    read(Number),
    reverse_number(Number, Reverse),
    write('Reversed number is: '),
    write(Reverse), nl.
