% member
        member(X,[X|_]).
        member(X,[_|L]) :- member(X,L).
% genere un nombre entre A et B
	valeur(A,A,A) :- !.
        valeur(A,B,B) :- A =< B.
	valeur(A,B,X) :- B2 is B-1,A =< B,valeur(A,B2,X).

        element(Rang,X,[X|_]) :- Rang is 1.
	element(Rang,X,[_|L]) :- element(Rang2,X,L),Rang is Rang2+1.


% AllDifferent(L)
        allDifferent([]).
        allDifferent([_]).
	allDifferent([X|L]) :- not(member(X,L)),allDifferent(L).

% CreateList(L)
         createList(A,B,0,[]) :- A =< B, !.
         createList(A,B,N,[X|L]) :- valeur(A,B,X),N2 is N-1, createList(A,B,N2,L),
				    not(member(X,L)).

% CubeMagique(L)
         cubeMagique(R,Cube) :- R2 is R-1, createList(1,R2,9,Cube),
				element(1,A,Cube),element(2,B,Cube),element(3,C,Cube),
				element(4,D,Cube),element(5,E,Cube),element(6,F,Cube),
				element(7,G,Cube),element(8,H,Cube),element(9,I,Cube),
				print(Cube),
				A+B+C==R,D+E+F==R,G+H+I==R.


