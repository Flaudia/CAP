angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..10).
hasAngle(1,300,0).
hasAngle(2,60,0).
hasAngle(3,300,0).
hasAngle(4,120,0).
hasAngle(5,180,0).
hasAngle(6,60,0).
hasAngle(7,180,0).
hasAngle(8,300,0).
hasAngle(9,60,0).
hasAngle(10,240,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
isLinked(9,10).
:- not hasAngle(1,300,_).
:- not hasAngle(2,60,_).
:- not hasAngle(3,60,_).
:- not hasAngle(4,180,_).
:- not hasAngle(5,60,_).
:- not hasAngle(6,60,_).
:- not hasAngle(7,180,_).
:- not hasAngle(8,300,_).
:- not hasAngle(9,240,_).
:- not hasAngle(10,120,_).
