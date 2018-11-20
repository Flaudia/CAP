angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..4).
hasAngle(1,270,0).
hasAngle(2,90,0).
hasAngle(3,90,0).
hasAngle(4,270,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,0,_).
:- not hasAngle(2,180,_).
:- not hasAngle(3,270,_).
:- not hasAngle(4,270,_).
