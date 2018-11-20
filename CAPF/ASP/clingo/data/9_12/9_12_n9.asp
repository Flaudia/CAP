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
#const timemax = 19 .
time(0..timemax).
joint(1..9).
hasAngle(1,270,0).
hasAngle(2,60,0).
hasAngle(3,90,0).
hasAngle(4,150,0).
hasAngle(5,120,0).
hasAngle(6,60,0).
hasAngle(7,300,0).
hasAngle(8,120,0).
hasAngle(9,60,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
:- not hasAngle(1,150,timemax).
:- not hasAngle(2,120,timemax).
:- not hasAngle(3,60,timemax).
:- not hasAngle(4,300,timemax).
:- not hasAngle(5,120,timemax).
:- not hasAngle(6,60,timemax).
:- not hasAngle(7,150,timemax).
:- not hasAngle(8,60,timemax).
:- not hasAngle(9,60,timemax).
