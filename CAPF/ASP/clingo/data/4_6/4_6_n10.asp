angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 1 .
time(0..timemax).
joint(1..4).
hasAngle(1,60,0).
hasAngle(2,0,0).
hasAngle(3,240,0).
hasAngle(4,300,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,300,timemax).
:- not hasAngle(2,0,timemax).
:- not hasAngle(3,60,timemax).
:- not hasAngle(4,0,timemax).
