angles(0).
angles(180).
#const granularity = 180 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..12).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,180,0).
hasAngle(4,180,0).
hasAngle(5,0,0).
hasAngle(6,180,0).
hasAngle(7,0,0).
hasAngle(8,0,0).
hasAngle(9,0,0).
hasAngle(10,0,0).
hasAngle(11,180,0).
hasAngle(12,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
isLinked(9,10).
isLinked(10,11).
isLinked(11,12).
:- not hasAngle(1,180,_).
:- not hasAngle(2,0,_).
:- not hasAngle(3,0,_).
:- not hasAngle(4,0,_).
:- not hasAngle(5,180,_).
:- not hasAngle(6,180,_).
:- not hasAngle(7,180,_).
:- not hasAngle(8,0,_).
:- not hasAngle(9,0,_).
:- not hasAngle(10,0,_).
:- not hasAngle(11,0,_).
:- not hasAngle(12,180,_).
