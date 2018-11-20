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
#const timemax = 17 .
time(0..timemax).
joint(1..7).
hasAngle(1,150,0).
hasAngle(2,240,0).
hasAngle(3,240,0).
hasAngle(4,60,0).
hasAngle(5,270,0).
hasAngle(6,180,0).
hasAngle(7,150,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
:- not hasAngle(1,60,timemax).
:- not hasAngle(2,270,timemax).
:- not hasAngle(3,180,timemax).
:- not hasAngle(4,150,timemax).
:- not hasAngle(5,270,timemax).
:- not hasAngle(6,300,timemax).
:- not hasAngle(7,150,timemax).
