angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
joint(1..4).
hasAngle(1,180,0).
hasAngle(2,90,0).
hasAngle(3,180,0).
hasAngle(4,270,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,270,timemax).
:- not hasAngle(2,0,timemax).
:- not hasAngle(3,0,timemax).
:- not hasAngle(4,90,timemax).
