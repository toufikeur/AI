% Base case: sum of empty list is 0
sum_list([], 0).

% Recursive case
sum_list([Head|Tail], Sum) :-
    sum_list(Tail, Rest),
    Sum is Head + Rest.
