angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..3).
hasAngle(1,300,0).
hasAngle(2,120,0).
hasAngle(3,180,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,60,_).
:- not hasAngle(2,0,_).
:- not hasAngle(3,120,_).
