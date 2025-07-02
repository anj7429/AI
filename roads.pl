road(faridabad,gurugram,37).
road(faridabad,palwal,32).
road(faridabad,bahadurgarh,60).
road(faridabad,noida,50).
road(faridabad,delhi,34).
road(faridabad,ghaziabad,31).
road(faridabad,sonipat,71).
road(gurugram,rohtak,67).
road(palwal,alwar,60).
road(alwar,koshi,50).
road(palwal,jhajjar,90).
concatenate([],L1,L1).
concatenate([H|T],L2,[H|R]):- concatenate(T,L2,R).
ismember(X,[X|_]). ismember(X,[Y|T]):-X\=Y,ismember(X,T).
froute(Town1,Town2,Distance,Path):route(Town1,Town2,Distance,Rpath),concatenate(Rpath,[Town2],Path).
route(Town1,Town2,Distance,[Town1]):-road(Town1,Town2,Distance).
route(Town1,Town2,Distance,[Town1|Path]):road(Town1,X,Dist1),route(X, Town2,Dist2,Path),Distance is Dist1+Dist2.
travel(X,Y,D):-road(X,Y,D).
