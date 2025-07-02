hanoi(1, S, _, D) :-
    write("Move disk 1 from "), write(S), write(" to "), write(D), nl.

hanoi(N, S, I, D) :-
    N > 1,
    M is N - 1,
    hanoi(M, S, D, I),
    write("Move disk "), write(N), write(" from "), write(S), write(" to "), write(D), nl,
    hanoi(M, I, S, D).
