main:-write('Enter list: '),
      read(L),
      write('enter element: '),
      read(I),
      write('enter position: '),
      read(N),
      insert(I,N,L,R),nl,
      write('List: '),
      write(R).
insert(I,1,L,[I|L]).
insert(I,N,[H|T],[H|R1]):-N1 is N-1,
                 insert(I,N1,T,R1).


main1:-write('Enter list: '),
      read(L),
      write('enter position to be deleted: '),
      read(N),
      delet(N,L,R),nl,
      write('List: '),
      write(R).
delet(1,[H|T],T).
delet(N,[H|T],[H|R]):-N1 is N-1,
                      delet(N1,T,R).

main3:-write('Enter list1: '),
      read(L1),
      write('Enter list2: '),
      read(L2),
      merge(L1,L2,L3),nl,
      write('resultant list: '),
      write(L3).
merge([],[],[]).
merge(L,[],L).
merge([],L,L).
merge([H1|T1],[H2|T2],[H1|R1]):-H1<H2,
                               merge(T1,[H2|T2],R1).
merge([H1|T1],[H2|T2],[H2|R1]):-H1>=H2,
                               merge([H1|T1],T2,R1).

