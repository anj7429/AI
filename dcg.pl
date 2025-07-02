length([],0).
length([_|T],N):-length(T,N1),N is N1+1.
s(A,Z):-np(A,Y),vp(Y,Z),length(Z,0),write("Sentence is valid").
s(A,Z):-np(A,Y1),vp(Y1,Y2),np(Y2,Z),length(Z,0),write("Sentence is valid").
np(A,Z):-det(A,Y),n(Y,Z).
np(A,Z):-n(A,Z).
np(A,Z):-adj(A,Y),n(Y,Z).
vp(A,Z):-v(A,Z).
det([a|X],X).
det([the|X],X).
det([an|X],X).
n([cat|X],X).
n([bat|X],X).
v([eats|X],X).
adj([fat|X],X).
