angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 1 .
time(0..timemax).
joint(1..7).
hasAngle(1,120,0).
hasAngle(2,180,0).
hasAngle(3,60,0).
hasAngle(4,300,0).
hasAngle(5,300,0).
hasAngle(6,60,0).
hasAngle(7,120,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
:- not hasAngle(1,300,timemax).
:- not hasAngle(2,300,timemax).
:- not hasAngle(3,60,timemax).
:- not hasAngle(4,120,timemax).
:- not hasAngle(5,120,timemax).
:- not hasAngle(6,60,timemax).
:- not hasAngle(7,60,timemax).
