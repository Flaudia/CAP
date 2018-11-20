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
#const timemax = 21 .
time(0..timemax).
joint(1..12).
hasAngle(1,280,0).
hasAngle(2,240,0).
hasAngle(3,0,0).
hasAngle(4,0,0).
hasAngle(5,160,0).
hasAngle(6,160,0).
hasAngle(7,200,0).
hasAngle(8,320,0).
hasAngle(9,240,0).
hasAngle(10,40,0).
hasAngle(11,200,0).
hasAngle(12,80,0).
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
:- not hasAngle(1,0,timemax).
:- not hasAngle(2,160,timemax).
:- not hasAngle(3,160,timemax).
:- not hasAngle(4,200,timemax).
:- not hasAngle(5,320,timemax).
:- not hasAngle(6,240,timemax).
:- not hasAngle(7,40,timemax).
:- not hasAngle(8,200,timemax).
:- not hasAngle(9,80,timemax).
:- not hasAngle(10,160,timemax).
:- not hasAngle(11,80,timemax).
:- not hasAngle(12,320,timemax).
