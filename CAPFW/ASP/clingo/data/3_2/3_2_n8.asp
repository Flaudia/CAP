angles(0).
angles(180).
#const granularity = 180 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..3).
hasAngle(1,180,0).
hasAngle(2,180,0).
hasAngle(3,0,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,0,_).
:- not hasAngle(2,0,_).
:- not hasAngle(3,0,_).
