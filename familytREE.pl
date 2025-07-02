father(prithvi, gaurav).
father(prithvi, kamal).
father(prithvi, vidushi).
father(gaurav, sonu).
father(kamal, monu).
father(vidvan, swati).

husband(prithvi, chhaya).
husband(gaurav, rani).
husband(kamal, naina).
husband(vidvan, vidushi).

male(prithvi).
male(gaurav).
male(kamal).
male(vidvan).
male(sonu).
male(monu).

female(chhaya).
female(rani).
female(naina).
female(vidushi).
female(swati).

grandfather(X, Y) :- father(X, Z), father(Z, Y).

brother(X, Y) :- father(Z, X), father(Z, Y), male(X), X \= Y.

uncle(X, Y) :- brother(X, Z), father(Z, Y).

son(Y, X) :- father(X, Y), male(Y).

daughter(Y, X) :- father(X, Y), female(Y).
