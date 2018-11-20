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
hasAngle(1,120,0).
hasAngle(2,40,0).
hasAngle(3,240,0).
hasAngle(4,80,0).
hasAngle(5,320,0).
hasAngle(6,240,0).
hasAngle(7,120,0).
hasAngle(8,240,0).
hasAngle(9,40,0).
hasAngle(10,240,0).
hasAngle(11,320,0).
hasAngle(12,40,0).
hasAngle(13,0,0).
hasAngle(14,240,0).
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
:- not hasAngle(1,240,_).
:- not hasAngle(2,120,_).
:- not hasAngle(3,120,_).
:- not hasAngle(4,40,_).
:- not hasAngle(5,0,_).
:- not hasAngle(6,40,_).
:- not hasAngle(7,320,_).
:- not hasAngle(8,120,_).
:- not hasAngle(9,40,_).
:- not hasAngle(10,40,_).
:- not hasAngle(11,160,_).
:- not hasAngle(12,0,_).
:- not hasAngle(13,40,_).
:- not hasAngle(14,80,_).
