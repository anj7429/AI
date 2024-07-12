main1:-write("Enter n1:"),
       read(N1),
       write("Enter n2:"),
       read(N2),
       sum(N1,N2,R),
       write(R).
sum(X,Y,Z):-Z is X+Y.

main2:-write("Enter n1:"),
       read(N1),
       write("Enter n2:"),
       read(N2),
       max(N1,N2,R),
       write(R).
max(X,Y,Z):- X>=Y, Z is X;Z is Y.

main3:-write("Enter n1:"),
       read(X),
       fact(X,Fa),
       write(Fa).
fact(0,1).
fact(N,F):-N1 is N-1,fact(N1,R1),F is N*R1.

main4:-write("Enter n:"),
       read(N),
       fibo(N,T),
       write(T).
fibo(1,0).
fibo(2,1).
fibo(N,T):-N>2,N1 is N-1,fibo(N1,R1),N2 is N-2,fibo(N2,R2),T is R1+R2.

main5:-write("Enter n1:"),
       read(N1),
       write("Enter n2:"),
       read(N2),
       gcd(N1,N2,Re),
       write(Re).
gcd(X,0,X).
gcd(X,Y,R):-Y1 is mod(X,Y),gcd(Y,Y1,R).

main6:-write("Enter n:"),
       read(N),
       write("Enter power:"),
       read(P),
       pow(N,P,Re),
       write(Re).
pow(X,0,1).
pow(X,Y,R):-Y>0,Y1 is Y-1,pow(X,Y1,R1),R is X*R1.
pow(X,Y,R):-Y<0,Y1 is abs(Y),pow(X,Y1,R1),R is 1/R1.

main7:-write("Enter n1:"),
       read(N1),
       write("Enter n2:"),
       read(N2),
       mul(N1,N2,Re),
       write(Re).
mul(X,0,0).
mul(X,Y,R):-Y>0,Y1 is Y-1,mul(X,Y1,R1),R is X+R1.
mul(X,Y,R):-Y<0,Y1 is -Y-1,mul(X,Y1,R1),R is -1*(X+R1).

main8:-write("Enter L:"),
       read(L),
       write("Enter n: "),
       read(N),
       member(N,L),
       write("Yes");
       write("No").
member(X,[X|_]).
member(X,[Y|T]):-member(X,T).

main9:-write("Enter L1: "),
       read(L1),
       write("Enter L2: "),
       read(L2),
       con(L1,L2,R),
       write(R).
con([],L,L).
con([H|T],L2,[H|L3]):-con(T,L2,L3).

main10:-write("Enter L1: "),
        read(L),
        rev(L,R),
        write(R),
        palin(L,R).
rev([],[]).
rev([X|T],R):-rev(T,R1),
              con(R1,[X],R).
con([],L,L).
con([H|T],L2,[H|L3]):-con(T,L2,L3).
palin(X,R):-X==R,write("palindrome");write("no").

main11:-write("Enter L1: "),
        read(L),
        summ(L,S),
        write(S).
summ([],0).
summ([H|T],S):-summ(T,S1),
               S is H+S1.

main12:-write("Enter L1: "),
        read(L),
        odd(L),
        write("odd");
        even(L),
        write("even").
odd([_]).
even([]).
odd([_|T]):-even(T).
even([_|T]):-odd(T).

main13:-write("Enter L:"),
        read(L),
        maxel(L,Re),
        write(Re).
maxel([X],X).
maxel([X,Y|T],R):-X>=Y,maxel([X|T],R);maxel([Y|T],R).

main14:-write("Enter L:"),
        read(L),
        write("Enter n:"),
        read(N),
        nth(N,L,Re),
        write(Re).
nth(1,[H|T],H).
nth(N,[H|T],R):-N1 is N-1,
               nth(N1,T,R).

main15:-write("Enter L:"),
        read(L),
        write("Insert I:"),
        read(I),
        write("Enter n:"),
        read(N),
        insert(I,N,L,Re),
        write(Re).
insert(I,1,L,[I|L]).
insert(I,N,[H|T],[H|R]):-N1 is N-1,
               insert(I,N1,T,R).

main16:-write("Enter L:"),
        read(L),
        write("Enter n:"),
        read(N),
        del(N,L,Re),
        write(Re).
del(1,[H|T],T).
del(N,[H|T],[H|R]):-N1 is N-1,
                    del(N1,T,R).

main17:-write("Enter L1:"),
        read(L1),
        write("Enter L:"),
        read(L2),
        merge(L1,L2,Re),
        write(Re).
merge([],[],[]).
merge([],L,L).
merge(L,[],L).
merge([H1|T1],[H2|T2],[H1|R1]):-H1<H2
                               ,merge(T1,[H2|T2],R1).
merge([H1|T1],[H2|T2],[H2|R1]):-H1>=H2,
                                merge([H1|T1],T2,R1).

merge([H1|T1],[H2|T2],[H1|R1]):-H1<H2,
                               merge(T1,[H2|T2],R1).
merge([H1|T1],[H2|T2],[H2|R1]):-H1>=H2,
                               merge([H1|T1],T2,R1).












