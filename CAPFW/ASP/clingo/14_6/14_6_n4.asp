angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..14).
hasAngle(1,240,0).
hasAngle(2,120,0).
hasAngle(3,300,0).
hasAngle(4,300,0).
hasAngle(5,60,0).
hasAngle(6,120,0).
hasAngle(7,240,0).
hasAngle(8,0,0).
hasAngle(9,240,0).
hasAngle(10,120,0).
hasAngle(11,180,0).
hasAngle(12,120,0).
hasAngle(13,0,0).
hasAngle(14,180,0).
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
isLinked(12,13).
isLinked(13,14).
:- not hasAngle(1,0,_).
:- not hasAngle(2,240,_).
:- not hasAngle(3,240,_).
:- not hasAngle(4,240,_).
:- not hasAngle(5,120,_).
:- not hasAngle(6,180,_).
:- not hasAngle(7,240,_).
:- not hasAngle(8,120,_).
:- not hasAngle(9,0,_).
:- not hasAngle(10,120,_).
:- not hasAngle(11,240,_).
:- not hasAngle(12,120,_).
:- not hasAngle(13,0,_).
:- not hasAngle(14,240,_).
