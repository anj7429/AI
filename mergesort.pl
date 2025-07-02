% Split a list into two halves
split([], [], []).
split([A], [A], []).
split([A,B|R], [A|RA], [B|RB]) :- split(R, RA, RB).
% Merge two sorted lists
merge(A, [], A).
merge([], B, B).
merge([A|RA], [B|RB], [A|M]) :- A =< B, merge(RA, [B|RB], M).
merge([A|RA], [B|RB], [B|M]) :- A > B, merge([A|RA], RB, M).
% Merge sort
mergesort([], []).
mergesort([A], [A]).
mergesort([A,B|R], S) :-
    split([A,B|R], R1, R2),
    mergesort(R1, S1),
    mergesort(R2, S2),
    merge(S1, S2, S).
