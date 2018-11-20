angles(0).
angles(45).
angles(90).
angles(135).
angles(180).
angles(225).
angles(270).
angles(315).
#const granularity = 45 .
#const timemax = 15 .
time(0..timemax).
joint(1..9).
hasAngle(1,180,0).
hasAngle(2,270,0).
hasAngle(3,0,0).
hasAngle(4,225,0).
hasAngle(5,135,0).
hasAngle(6,270,0).
hasAngle(7,225,0).
hasAngle(8,315,0).
hasAngle(9,0,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
:- not hasAngle(1,225,timemax).
:- not hasAngle(2,135,timemax).
:- not hasAngle(3,270,timemax).
:- not hasAngle(4,225,timemax).
:- not hasAngle(5,315,timemax).
:- not hasAngle(6,0,timemax).
:- not hasAngle(7,225,timemax).
:- not hasAngle(8,225,timemax).
:- not hasAngle(9,225,timemax).
