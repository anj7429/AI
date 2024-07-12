main1:-write('Enter list:'),
       read(L),
       rev(L,R),
       palin(L,R),
       write('reverse: '),
       write(R).
rev([],[]).
rev([X|T],R):-rev(T,R1),
              conc(R1,[X],R).
conc([],L,L).
conc([H|T],L2,[H|L3]):-conc(T,L2,L3).
palin(X,R):- X==R,write('palindrome');write('no').

main2:-write('Enter list:'),
       read(L),
       sum(L,S),
       write('sum is '),
       write(S).
sum([],0).
sum([H|T],S):-sum(T,S1),
              S is H+S1.

main3:-write('Enter list:'),
       read(L),
       even(L),write('even');
       odd(L),write('odd').
even([]).
odd([_]).
even([_|T]):-odd(T).
odd([_|T]):-even(T).

main4:-write('Enter list:'),
       read(L),
       write('Enter nth element: '),
       read(N),
       nth(N,L,X),
       write('Element is '),
       write(X).
nth(1,[H|T],H).
nth(N,[H|T],X):-N1 is N-1,
               nth(N1,T,X).

main5:-write('Enter list:'),
      read(L),
      maxx(L,M),
      write('max is '),
      write(M).
maxx([X],X).
maxx([X,Y|T],M):-X>Y,maxx([X|T],M);maxx([Y|T],M).





