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
joint(1..12).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,45,0).
hasAngle(4,0,0).
hasAngle(5,90,0).
hasAngle(6,90,0).
hasAngle(7,90,0).
hasAngle(8,225,0).
hasAngle(9,45,0).
hasAngle(10,45,0).
hasAngle(11,90,0).
hasAngle(12,45,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
isLinked(9,10).
isLinked(10,11).
isLinked(11,12).
:- not hasAngle(1,0,timemax).
:- not hasAngle(2,90,timemax).
:- not hasAngle(3,90,timemax).
:- not hasAngle(4,90,timemax).
:- not hasAngle(5,225,timemax).
:- not hasAngle(6,45,timemax).
:- not hasAngle(7,45,timemax).
:- not hasAngle(8,90,timemax).
:- not hasAngle(9,45,timemax).
:- not hasAngle(10,45,timemax).
:- not hasAngle(11,315,timemax).
:- not hasAngle(12,315,timemax).
