angles(0).
angles(45).
angles(90).
angles(135).
angles(180).
angles(225).
angles(270).
angles(315).
#const granularity = 45 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..11).
hasAngle(1,45,0).
hasAngle(2,45,0).
hasAngle(3,180,0).
hasAngle(4,225,0).
hasAngle(5,90,0).
hasAngle(6,315,0).
hasAngle(7,135,0).
hasAngle(8,315,0).
hasAngle(9,90,0).
hasAngle(10,225,0).
hasAngle(11,135,0).
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
:- not hasAngle(1,225,_).
:- not hasAngle(2,180,_).
:- not hasAngle(3,270,_).
:- not hasAngle(4,180,_).
:- not hasAngle(5,45,_).
:- not hasAngle(6,225,_).
:- not hasAngle(7,135,_).
:- not hasAngle(8,225,_).
:- not hasAngle(9,315,_).
:- not hasAngle(10,315,_).
:- not hasAngle(11,315,_).
