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

% LucasMethod (R est toujour multiple de 3).
         divisible(R,N) :- M is R mod N, M == 0.
         carreMagique(R,[[E1,E2,E3],[E4,E5,E6],[E7,E8,E9]]) :- divisible(R,3), C is R//3, C2 is C-1, valeur(1,C2,A), C3 is C-A,
	                                                       C4 is C3-1,C5 is A+1,valeur(C5,C4,B), C5 is 2*A, not(B==C5),
							       print(A),print('_'),print(B),print('_'), print(C),
							       E1 is C+A,E2 is C-B-A,E3 is C+B,E4 is C-A+B, E5 is C,E6 is C+A-B,
							       E7 is C-B, E8 is C+A+B, E9 is C-A.



