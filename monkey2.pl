move(state(P,onfloor,P,H), climb, state(P,onbox,P,H)).

move(state(P1,onfloor,P1,H), push(P1,P2),state(P2,onfloor,P2,H)).
move(state(P1,onfloor,B,H), walk(P1,P2) , state(P2,onfloor,B,H)).

move(state(middle,onbox,middle,hasnot), grasp, state(middle,onbox,middle,has)).
canget(state(_,_,_,has)).
canget(State1):- move(State1,_,State2),canget(State2).
