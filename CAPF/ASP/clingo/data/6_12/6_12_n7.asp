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
joint(1..6).
hasAngle(1,90,0).
hasAngle(2,0,0).
hasAngle(3,330,0).
hasAngle(4,30,0).
hasAngle(5,210,0).
hasAngle(6,150,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,30,timemax).
:- not hasAngle(2,210,timemax).
:- not hasAngle(3,150,timemax).
:- not hasAngle(4,210,timemax).
:- not hasAngle(5,210,timemax).
:- not hasAngle(6,330,timemax).
