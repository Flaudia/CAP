angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 1 .
time(0..timemax).
joint(1..14).
hasAngle(1,300,0).
hasAngle(2,300,0).
hasAngle(3,300,0).
hasAngle(4,120,0).
hasAngle(5,180,0).
hasAngle(6,60,0).
hasAngle(7,240,0).
hasAngle(8,120,0).
hasAngle(9,60,0).
hasAngle(10,120,0).
hasAngle(11,300,0).
hasAngle(12,240,0).
hasAngle(13,300,0).
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
:- not hasAngle(1,120,timemax).
:- not hasAngle(2,180,timemax).
:- not hasAngle(3,60,timemax).
:- not hasAngle(4,240,timemax).
:- not hasAngle(5,120,timemax).
:- not hasAngle(6,60,timemax).
:- not hasAngle(7,120,timemax).
:- not hasAngle(8,300,timemax).
:- not hasAngle(9,240,timemax).
:- not hasAngle(10,300,timemax).
:- not hasAngle(11,240,timemax).
:- not hasAngle(12,180,timemax).
:- not hasAngle(13,180,timemax).
:- not hasAngle(14,0,timemax).
