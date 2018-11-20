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
joint(1..6).
hasAngle(1,200,0).
hasAngle(2,160,0).
hasAngle(3,120,0).
hasAngle(4,0,0).
hasAngle(5,280,0).
hasAngle(6,240,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,0,timemax).
:- not hasAngle(2,280,timemax).
:- not hasAngle(3,240,timemax).
:- not hasAngle(4,280,timemax).
:- not hasAngle(5,80,timemax).
:- not hasAngle(6,240,timemax).