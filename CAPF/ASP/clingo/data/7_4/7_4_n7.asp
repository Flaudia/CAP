angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
joint(1..7).
hasAngle(1,90,0).
hasAngle(2,0,0).
hasAngle(3,0,0).
hasAngle(4,180,0).
hasAngle(5,180,0).
hasAngle(6,270,0).
hasAngle(7,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
:- not hasAngle(1,180,timemax).
:- not hasAngle(2,180,timemax).
:- not hasAngle(3,270,timemax).
:- not hasAngle(4,180,timemax).
:- not hasAngle(5,180,timemax).
:- not hasAngle(6,90,timemax).
:- not hasAngle(7,0,timemax).
