main1:-write("Enter num1:"),
       read(N1),
       write("Enter num2:"),
       read(N2),
       max(N1,N2,R),
       write("max is "),
       write(R).
max(X,Y,Re):-X>Y,Re is X;Re is Y.

main2:-write("Enter num1:"),
       read(N1),
       write("Enter num2:"),
       read(N2),
       sum(N1,N2,R),
       write("Sum is "),
       write(R).
sum(X,Y,Re):-Re is X+Y.

main3:-write("Enter num:"),
       read(N),
       fact(N,F),
       write("Factorial is "),
       write(F).
fact(0,1).
fact(Nu,Fa):-Nu>0,N1 is Nu-1,fact(N1,F1),Fa is Nu*F1.

main4:-write("Enter num:"),
       read(N),
       fibo(N,T),
       write("Nth term of fibonaaci series is  "),
       write(T).
fibo(1,0).
fibo(2,1).
fibo(Nu,Tu):-Nu>2,N1 is Nu-1,fibo(N1,R1),N2 is Nu-2,fibo(N2,R2),Tu is R1+R2.

main5:-write("Enter N1:"),
       read(N1),
       write("Enter N2:"),
       read(N2),
       gcd(N1,N2,R),
       write("gcd is "),
       write(R).
gcd(X,0,X).
gcd(X,Y,Re):-Y1 is mod(X,Y),gcd(Y,Y1,Re).

main6:-write("Enter Number:"),
       read(N),
       write("Enter Power:"),
       read(P),
       pow(N,P,R),
       write("result is "),
       write(R).
pow(X,0,1).
pow(X,Y,Re):-Y>0,Y1 is Y-1,pow(X,Y1,R1),Re is X*R1.
pow(X,Y,Re):-Y<0,Y1 is abs(Y),pow(X,Y1,R1),Re is 1/R1.

main7:-write("Enter N1:"),
       read(N1),
       write("Enter N2:"),
       read(N2),
       mul(N1,N2,R),
       write("Result is "),
       write(R).
mul(X,0,0).
mul(X,Y,Re):-Y>0,Y1 is Y-1,mul(X,Y1,R1),Re is X+R1.
mul(X,Y,Re):-Y<0,Y1 is -Y-1,mul(X,Y1,R1),Re is -1*(X+R1).

main8:-write("Enter list: "),
       read(L),
       write("Enter number to check : "),
       read(X),
       member(X,L),
       write("Yes");
       write("No").
member(X1,[X1|_]).
member(X1,[Y|T]):-member(X1,T).


main10:-write("Enter list"),
       read(L),
       rev(L,R),
       palin(L,R),
       write("Reverse is "),
       write(R).
rev([],[]).
rev([X|T],R):-rev(T,R1),
               conc(R1,[X],R).
conc([],L,L).
conc([H|T],L2,[H|L3]):-conc(T,L2,L3).
palin(L1,R):-L1==R,write("palindrome");write("no").

main11:-write('Enter 1st list: '),
       read(L1),
       nl,
       reve(L1,R),
       palind(L1,R).
reve([],[]).
reve([X|T],R):-reve(T,R1),
               conc(R1,[X],R).
conc([],L,L).
conc([H|T],L2,[H|L3]):-conc(T,L2,L3).
palind(L,R):-L == R,write('palindrome');write('NOt p').



