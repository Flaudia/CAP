angles(0).
angles(30).
angles(60).
angles(90).
angles(120).
angles(150).
angles(180).
angles(210).
angles(240).
angles(270).
angles(300).
angles(330).
#const granularity = 30 .
#const timemax = 1 .
time(0..timemax).
joint(1..8).
hasAngle(1,30,0).
hasAngle(2,300,0).
hasAngle(3,60,0).
hasAngle(4,30,0).
hasAngle(5,90,0).
hasAngle(6,150,0).
hasAngle(7,300,0).
hasAngle(8,240,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
:- not hasAngle(1,30,timemax).
:- not hasAngle(2,90,timemax).
:- not hasAngle(3,150,timemax).
:- not hasAngle(4,300,timemax).
:- not hasAngle(5,240,timemax).
:- not hasAngle(6,90,timemax).
:- not hasAngle(7,30,timemax).
:- not hasAngle(8,300,timemax).
