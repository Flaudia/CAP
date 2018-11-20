angles(0).
angles(180).
#const granularity = 180 .
#const timemax = 1 .
time(0..timemax).
joint(1..5).
hasAngle(1,0,0).
hasAngle(2,0,0).
hasAngle(3,180,0).
hasAngle(4,180,0).
hasAngle(5,0,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
:- not hasAngle(1,180,timemax).
:- not hasAngle(2,0,timemax).
:- not hasAngle(3,180,timemax).
:- not hasAngle(4,180,timemax).
:- not hasAngle(5,180,timemax).
