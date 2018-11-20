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
joint(1..3).
hasAngle(1,200,0).
hasAngle(2,80,0).
hasAngle(3,240,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,80,timemax).
:- not hasAngle(2,40,timemax).
:- not hasAngle(3,240,timemax).
