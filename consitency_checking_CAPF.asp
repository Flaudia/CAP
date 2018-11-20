changeAngleF(J1,J2,A,Ai,T) :- joint(J1), joint(J2), angle(A), angle(Ai), time(T).

isLinked(J1,J2) :- joint(J1), joint(J2).

affectedF(J1,An,Ac,T) :- joint(j1), angle(An), angle(Ac), time(T).

hasAngle(J1,A,T) :- joint(J1), angle(A), time(T).
