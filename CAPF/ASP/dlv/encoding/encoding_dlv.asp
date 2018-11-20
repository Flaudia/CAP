joint(0).
hasAngle(0,0,0).
isLinked(0,1).


isLinked(J1,J2) :- isLinked(J2,J1).

{changeAngleF(J1,J2,A,Ai,T) : joint(J1), joint(J2), J1 > J2, angles(A), hasAngle(J1,Ai,T), A <> Ai, isLinked(J1,J2)} <=1 :- time(T), T< 1, T > 0.

:- changeAngleF(J1,J2,A,Ai,T), F1=(A+granularity)/360, F2=(Ai/360), F1 != F2, A < Ai.
:- changeAngleF(J1,J2,A,Ai,T), F1=(Ai+granularity)/360, F2=(A/360), F1 != F2, A > Ai.

affectedF(J1,An,Ac,T) :- changeAngleF(J2,_,A,Ap,T), J1>J2, hasAngle(J1,Ac,T), angles(An), An = (Ac + (A-Ap))/360, time(T), A > Ap.
affectedF(J1,An,Ac,T) :- changeAngleF(J2,_,A,Ap,T), J1>J2, hasAngle(J1,Ac,T), angles(An), An = (Ac + (Ap-A))/360, time(T), A < Ap.

 changeF(J2,T):-changeAngleF(J2,J1,A,_,T).
 alteredF(J2,T):-affectedF(J2,An,_,T).

hasAngle(J1,A,T+1) :- changeAngleF(J1,_,A,_,T).
hasAngle(J1,A,T+1) :- affectedF(J1,A,_,T).
hasAngle(J1,A,T+1) :- hasAngle(J1,A,T), not changeAngleF(J1,_,_,_,T), not affectedF(J1,_,_,T), T<= 1.
 
