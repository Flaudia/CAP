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
hasAngle(2,210,0).
hasAngle(3,120,0).
hasAngle(4,0,0).
hasAngle(5,180,0).
hasAngle(6,120,0).
hasAngle(7,90,0).
hasAngle(8,240,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
:- not hasAngle(1,0,timemax).
:- not hasAngle(2,180,timemax).
:- not hasAngle(3,120,timemax).
:- not hasAngle(4,90,timemax).
:- not hasAngle(5,240,timemax).
:- not hasAngle(6,180,timemax).
:- not hasAngle(7,210,timemax).
:- not hasAngle(8,210,timemax).
