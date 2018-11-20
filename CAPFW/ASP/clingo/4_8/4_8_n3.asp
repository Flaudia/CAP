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
hasAngle(2,315,0).
hasAngle(3,270,0).
hasAngle(4,135,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,270,_).
:- not hasAngle(2,180,_).
:- not hasAngle(3,315,_).
:- not hasAngle(4,45,_).
