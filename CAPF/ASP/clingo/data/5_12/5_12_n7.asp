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
joint(1..5).
hasAngle(1,30,0).
hasAngle(2,60,0).
hasAngle(3,210,0).
hasAngle(4,90,0).
hasAngle(5,210,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
:- not hasAngle(1,90,timemax).
:- not hasAngle(2,210,timemax).
:- not hasAngle(3,30,timemax).
:- not hasAngle(4,180,timemax).
:- not hasAngle(5,300,timemax).
