angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..3).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,90,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,270,_).
:- not hasAngle(2,90,_).
:- not hasAngle(3,180,_).
