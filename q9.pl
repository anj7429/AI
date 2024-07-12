main1:-write("Enter list1: "),
       write(N1),
       write("Enter list2: "),
       write(N2),
       conc(N1,N2,N3),
       write("concatenated list: "),
       write(N3).
conc([],L,L).
conc([H|T],L2,[H|L3]):-conc(T,L2,L3).
