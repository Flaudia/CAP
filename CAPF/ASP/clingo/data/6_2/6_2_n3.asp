angles(0).
angles(180).
#const granularity = 180 .
#const timemax = 1 .
time(0..timemax).
joint(1..6).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,0,0).
hasAngle(4,180,0).
hasAngle(5,180,0).
hasAngle(6,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,180,timemax).
:- not hasAngle(2,180,timemax).
:- not hasAngle(3,180,timemax).
:- not hasAngle(4,0,timemax).
:- not hasAngle(5,180,timemax).
:- not hasAngle(6,180,timemax).
