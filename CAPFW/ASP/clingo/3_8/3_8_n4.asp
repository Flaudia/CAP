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
joint(1..3).
hasAngle(1,315,0).
hasAngle(2,135,0).
hasAngle(3,270,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,0,_).
:- not hasAngle(2,0,_).
:- not hasAngle(3,45,_).