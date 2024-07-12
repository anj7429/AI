main1:-write('Enter list: '),
       read(L),
       sum(L,S),
       write('sum is '),
       write(S).
sum([],0).
sum([H|T],S):-sum(T,S1),
              S is H+S1.

main2:-write('Enter list: '),
       read(L),
       even(L),
       write('even');
       odd(L),
       write('odd').
even([]).
odd([_]).
even([_|T]):-odd(T).
odd([_|T]):-even(T).

main3:-write('Enter list: '),
       read(L),
       maxl(L,M),
       write("max is "),
       write(M).
maxl([X],X).
maxl([X,Y|T],R):-X>=Y,maxl([X|T],R),maxl([Y|T],R).

