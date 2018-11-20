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
joint(1..9).
hasAngle(1,200,0).
hasAngle(2,240,0).
hasAngle(3,80,0).
hasAngle(4,120,0).
hasAngle(5,200,0).
hasAngle(6,40,0).
hasAngle(7,40,0).
hasAngle(8,200,0).
hasAngle(9,80,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
:- not hasAngle(1,120,timemax).
:- not hasAngle(2,200,timemax).
:- not hasAngle(3,40,timemax).
:- not hasAngle(4,40,timemax).
:- not hasAngle(5,200,timemax).
:- not hasAngle(6,80,timemax).
:- not hasAngle(7,280,timemax).
:- not hasAngle(8,80,timemax).
:- not hasAngle(9,120,timemax).
