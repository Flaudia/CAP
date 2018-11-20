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
#const timemax = 16 .
time(0..timemax).
joint(1..11).
hasAngle(1,80,0).
hasAngle(2,240,0).
hasAngle(3,40,0).
hasAngle(4,320,0).
hasAngle(5,240,0).
hasAngle(6,80,0).
hasAngle(7,320,0).
hasAngle(8,0,0).
hasAngle(9,40,0).
hasAngle(10,40,0).
hasAngle(11,80,0).
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
:- not hasAngle(1,320,timemax).
:- not hasAngle(2,240,timemax).
:- not hasAngle(3,80,timemax).
:- not hasAngle(4,320,timemax).
:- not hasAngle(5,0,timemax).
:- not hasAngle(6,40,timemax).
:- not hasAngle(7,40,timemax).
:- not hasAngle(8,80,timemax).
:- not hasAngle(9,160,timemax).
:- not hasAngle(10,280,timemax).
:- not hasAngle(11,120,timemax).
