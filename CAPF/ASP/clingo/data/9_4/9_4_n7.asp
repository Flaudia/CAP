angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
joint(1..9).
hasAngle(1,180,0).
hasAngle(2,180,0).
hasAngle(3,180,0).
hasAngle(4,270,0).
hasAngle(5,180,0).
hasAngle(6,90,0).
hasAngle(7,180,0).
hasAngle(8,90,0).
hasAngle(9,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
:- not hasAngle(1,270,timemax).
:- not hasAngle(2,180,timemax).
:- not hasAngle(3,90,timemax).
:- not hasAngle(4,180,timemax).
:- not hasAngle(5,90,timemax).
:- not hasAngle(6,180,timemax).
:- not hasAngle(7,270,timemax).
:- not hasAngle(8,0,timemax).
:- not hasAngle(9,90,timemax).
