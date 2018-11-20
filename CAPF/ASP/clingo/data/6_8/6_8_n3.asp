angles(0).
angles(45).
angles(90).
angles(135).
angles(180).
angles(225).
angles(270).
angles(315).
#const granularity = 45 .
#const timemax = 1 .
time(0..timemax).
joint(1..6).
hasAngle(1,315,0).
hasAngle(2,0,0).
hasAngle(3,270,0).
hasAngle(4,45,0).
hasAngle(5,180,0).
hasAngle(6,90,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,45,timemax).
:- not hasAngle(2,180,timemax).
:- not hasAngle(3,90,timemax).
:- not hasAngle(4,90,timemax).
:- not hasAngle(5,0,timemax).
:- not hasAngle(6,0,timemax).
