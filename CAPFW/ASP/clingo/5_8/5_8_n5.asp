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
joint(1..5).
hasAngle(1,180,0).
hasAngle(2,180,0).
hasAngle(3,225,0).
hasAngle(4,135,0).
hasAngle(5,225,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
:- not hasAngle(1,135,_).
:- not hasAngle(2,90,_).
:- not hasAngle(3,225,_).
:- not hasAngle(4,90,_).
:- not hasAngle(5,0,_).
