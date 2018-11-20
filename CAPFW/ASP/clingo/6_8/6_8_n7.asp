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
joint(1..6).
hasAngle(1,270,0).
hasAngle(2,135,0).
hasAngle(3,225,0).
hasAngle(4,180,0).
hasAngle(5,225,0).
hasAngle(6,270,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,90,_).
:- not hasAngle(2,45,_).
:- not hasAngle(3,270,_).
:- not hasAngle(4,270,_).
:- not hasAngle(5,135,_).
:- not hasAngle(6,225,_).
