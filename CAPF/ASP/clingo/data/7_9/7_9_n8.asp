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
#const timemax = 1 .
time(0..timemax).
joint(1..7).
hasAngle(1,240,0).
hasAngle(2,200,0).
hasAngle(3,0,0).
hasAngle(4,40,0).
hasAngle(5,0,0).
hasAngle(6,280,0).
hasAngle(7,320,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
:- not hasAngle(1,40,timemax).
:- not hasAngle(2,0,timemax).
:- not hasAngle(3,280,timemax).
:- not hasAngle(4,320,timemax).
:- not hasAngle(5,0,timemax).
:- not hasAngle(6,200,timemax).
:- not hasAngle(7,240,timemax).
