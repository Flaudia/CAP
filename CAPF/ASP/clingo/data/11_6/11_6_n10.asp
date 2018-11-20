angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 14 .
time(0..timemax).
joint(1..11).
hasAngle(1,180,0).
hasAngle(2,60,0).
hasAngle(3,240,0).
hasAngle(4,300,0).
hasAngle(5,0,0).
hasAngle(6,240,0).
hasAngle(7,300,0).
hasAngle(8,0,0).
hasAngle(9,60,0).
hasAngle(10,60,0).
hasAngle(11,180,0).
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
:- not hasAngle(1,300,timemax).
:- not hasAngle(2,0,timemax).
:- not hasAngle(3,240,timemax).
:- not hasAngle(4,300,timemax).
:- not hasAngle(5,0,timemax).
:- not hasAngle(6,60,timemax).
:- not hasAngle(7,60,timemax).
:- not hasAngle(8,180,timemax).
:- not hasAngle(9,0,timemax).
:- not hasAngle(10,120,timemax).
:- not hasAngle(11,180,timemax).
