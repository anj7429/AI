start(s0).
final(s3).
final(s4).

transition(s0,'a', s1).
transition(s0,'b', s2).
transition(s1,'c', s3).
transition(s2,'d', s4).
transition(s3,'d', s3).
transition(s4,'c', s4).

dfaaccpet([H|T], S) :-
    transition(S, H, I),
    dfaaccpet(T, I).  % Move to the next state based on the transition

dfaaccpet([], State) :-
    final(State).  % Accept if we reach a final state

dfaaccpet([_|_], State) :-
    \+ final(State).  % Reject if we do not end in a final state



