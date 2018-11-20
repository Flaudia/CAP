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
joint(1..3).
hasAngle(1,150,0).
hasAngle(2,120,0).
hasAngle(3,150,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,150,timemax).
:- not hasAngle(2,120,timemax).
:- not hasAngle(3,270,timemax).
