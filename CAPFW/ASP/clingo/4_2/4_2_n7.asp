angles(0).
angles(180).
#const granularity = 180 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..4).
hasAngle(1,180,0).
hasAngle(2,0,0).
hasAngle(3,180,0).
hasAngle(4,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,180,_).
:- not hasAngle(2,180,_).
:- not hasAngle(3,180,_).
:- not hasAngle(4,180,_).
