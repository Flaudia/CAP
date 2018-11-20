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
joint(1..4).
hasAngle(1,90,0).
hasAngle(2,225,0).
hasAngle(3,315,0).
hasAngle(4,315,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,315,_).
:- not hasAngle(2,315,_).
:- not hasAngle(3,225,_).
:- not hasAngle(4,225,_).
