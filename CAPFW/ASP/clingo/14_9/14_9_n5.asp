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
joint(1..14).
hasAngle(1,200,0).
hasAngle(2,280,0).
hasAngle(3,240,0).
hasAngle(4,80,0).
hasAngle(5,320,0).
hasAngle(6,80,0).
hasAngle(7,320,0).
hasAngle(8,80,0).
hasAngle(9,40,0).
hasAngle(10,160,0).
hasAngle(11,40,0).
hasAngle(12,0,0).
hasAngle(13,120,0).
hasAngle(14,80,0).
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
:- not hasAngle(1,40,_).
:- not hasAngle(2,160,_).
:- not hasAngle(3,320,_).
:- not hasAngle(4,160,_).
:- not hasAngle(5,200,_).
:- not hasAngle(6,0,_).
:- not hasAngle(7,0,_).
:- not hasAngle(8,120,_).
:- not hasAngle(9,0,_).
:- not hasAngle(10,0,_).
:- not hasAngle(11,240,_).
:- not hasAngle(12,160,_).
:- not hasAngle(13,320,_).
:- not hasAngle(14,320,_).
