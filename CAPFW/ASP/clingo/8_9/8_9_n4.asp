angles(0).
angles(40).
angles(80).
angles(120).
angles(160).
angles(200).
angles(240).
angles(280).
angles(320).
#const granularity = 40 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..8).
hasAngle(1,80,0).
hasAngle(2,40,0).
hasAngle(3,80,0).
hasAngle(4,40,0).
hasAngle(5,160,0).
hasAngle(6,0,0).
hasAngle(7,80,0).
hasAngle(8,280,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
:- not hasAngle(1,200,_).
:- not hasAngle(2,160,_).
:- not hasAngle(3,80,_).
:- not hasAngle(4,200,_).
:- not hasAngle(5,40,_).
:- not hasAngle(6,240,_).
:- not hasAngle(7,280,_).
:- not hasAngle(8,320,_).
