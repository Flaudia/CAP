angles(0).
angles(180).
#const granularity = 180 .
#const timemax = 1 .
time(0..timemax).
joint(1..3).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,0,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,0,timemax).
:- not hasAngle(2,0,timemax).
:- not hasAngle(3,0,timemax).
