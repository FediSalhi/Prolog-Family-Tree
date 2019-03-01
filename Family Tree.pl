male(a).
male(d).
male(f).
male(h).
male(k).
male(m).
male(n).
female(b).
female(c).
female(g).
female(i).
female(l).
female(o).
father(c,a).
mother(c,b).
father(e,c).
mother(e,b).
father(f,a).
mother(f,b).
father(i,d).
mother(i,c).
father(k,f).
mother(k,g).
father(m,h).
mother(m,i).
father(n,k).
mother(o,k).
father(o,f).
mother(c,f).

grandparent(X,Y):-
    father(X,Z),
    father(Z,Y);
    mother(X,Z),
    mother(Z,Y);
    father(X,Z),
    mother(Z,Y);
    mother(X,Z),
    father(Z,Y).

sibling(X,Y):-
    mother(X,Z),
    mother(Y,Z);
    father(X,Z),
    father(Y,Z).

couple(X,Y):-
    mother(Z,X);
    father(Z,X),
    mother(Z,Y);
    father(Z,Y).

child(X,Y):-
    father(X,Y);
    mother(X,Y).

uncle(X,Y):-
    child(X,Z),
    sibling(Y,Z),
    male(Y).

aunt(X,Y):-
    child(X,Z),
    sibling(Y,Z),
    female(Y).












