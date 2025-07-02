% listlength(List, Length) - Computes the length of a list.
listlength([], 0).
listlength([_|T], N) :- listlength(T, N1), N is N1 + 1.

% member(Element, List) - Checks if an element is a member of a list.
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

% count_to_10(X) - Counts from X to 10.
count_to_10(10) :- write(10), nl.
count_to_10(X) :- X < 10, write(X), nl, Y is X + 1, count_to_10(Y).

% delete(Element, List, Result) - Deletes the first occurrence of Element from List.
delete(X, [X|T], T).
delete(X, [Y|T1], [Y|T2]) :- delete(X, T1, T2).

% append(List1, List2, Result) - Appends List1 and List2 into Result.
append([], L, L).
append([H|T], L2, [H|R]) :- append(T, L2, R).

% insert(Element, List, Result) - Inserts Element into List at any position.
insert(X, L, R) :- append(A, B, L), append(A, [X|B], R).

% shift(List, Shifted) - Rotates the list one step to the left.
shift([H|T], S) :- append(T, [H], S).

% subset(Sub, Superset) - True if Sub is a subset of Superset.
subset([], []).
subset([H|T], [H|S]) :- subset(T, S).
subset([_|T], S) :- subset(T, S).

% reverse(List, Reversed) - Reverses a list.
reverse([], []).
reverse([H|T], R) :- reverse(T, RT), append(RT, [H], R).

% perm(List, Permutation) - Generates a permutation of a list.
perm([], []).
perm(L, [X|P]) :- delete(X, L, L1), perm(L1, P).

% union(List1, List2, Result) - Set union of two lists.
union([], Z, Z).
union([X|Y], Z, W) :- member(X, Z), union(Y, Z, W).
union([X|Y], Z, [X|W]) :- \+ member(X, Z), union(Y, Z, W).

% intersection(List1, List2, Result) - Set intersection of two lists.
intersection([], _, []).
intersection([X|Y], Z, [X|W]) :- member(X, Z), intersection(Y, Z, W).
intersection([X|Y], Z, W) :- \+ member(X, Z), intersection(Y, Z, W).
