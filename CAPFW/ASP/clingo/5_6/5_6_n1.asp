angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..5).
hasAngle(1,60,0).
hasAngle(2,0,0).
hasAngle(3,300,0).
hasAngle(4,0,0).
hasAngle(5,0,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
:- not hasAngle(1,120,_).
:- not hasAngle(2,300,_).
:- not hasAngle(3,60,_).
:- not hasAngle(4,60,_).
:- not hasAngle(5,300,_).
