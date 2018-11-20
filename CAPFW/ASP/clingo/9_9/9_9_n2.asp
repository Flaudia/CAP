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
joint(1..9).
hasAngle(1,240,0).
hasAngle(2,280,0).
hasAngle(3,200,0).
hasAngle(4,320,0).
hasAngle(5,120,0).
hasAngle(6,160,0).
hasAngle(7,120,0).
hasAngle(8,0,0).
hasAngle(9,80,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
:- not hasAngle(1,280,_).
:- not hasAngle(2,80,_).
:- not hasAngle(3,40,_).
:- not hasAngle(4,320,_).
:- not hasAngle(5,80,_).
:- not hasAngle(6,80,_).
:- not hasAngle(7,120,_).
:- not hasAngle(8,280,_).
:- not hasAngle(9,0,_).
