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
hasAngle(1,210,0).
hasAngle(2,180,0).
hasAngle(3,120,0).
hasAngle(4,270,0).
hasAngle(5,120,0).
hasAngle(6,330,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,270,timemax).
:- not hasAngle(2,120,timemax).
:- not hasAngle(3,330,timemax).
:- not hasAngle(4,240,timemax).
:- not hasAngle(5,150,timemax).
:- not hasAngle(6,300,timemax).
