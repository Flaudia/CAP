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
joint(1..4).
hasAngle(1,80,0).
hasAngle(2,240,0).
hasAngle(3,320,0).
hasAngle(4,280,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,280,timemax).
:- not hasAngle(2,120,timemax).
:- not hasAngle(3,0,timemax).
:- not hasAngle(4,120,timemax).
