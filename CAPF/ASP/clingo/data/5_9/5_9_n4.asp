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
joint(1..5).
hasAngle(1,120,0).
hasAngle(2,120,0).
hasAngle(3,40,0).
hasAngle(4,200,0).
hasAngle(5,0,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
:- not hasAngle(1,200,timemax).
:- not hasAngle(2,0,timemax).
:- not hasAngle(3,200,timemax).
:- not hasAngle(4,200,timemax).
:- not hasAngle(5,0,timemax).
