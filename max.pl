main3:-write('Enter list: '),
       read(L),
       maxl(L,M),
       write("max is "),
       write(M).
maxl([X],X).
maxl([X,Y|T],M):-X>=Y,maxl([X|T],M);maxl([Y|T],M).

main4:-write('Enter list: '),
       read(L),
       write("Enter position: "),
       read(N),
       nthelem(N,L,X),
       write('Elem is '),
       write(X).
nthelem(1,[H|T],H).
nthelem(Nu,[H|T],R):-N1 is Nu-1,
                     nthelem(N1,T,R).
