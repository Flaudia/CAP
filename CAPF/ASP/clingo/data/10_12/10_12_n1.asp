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
joint(1..10).
hasAngle(1,180,0).
hasAngle(2,90,0).
hasAngle(3,90,0).
hasAngle(4,330,0).
hasAngle(5,30,0).
hasAngle(6,180,0).
hasAngle(7,330,0).
hasAngle(8,270,0).
hasAngle(9,150,0).
hasAngle(10,120,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
isLinked(9,10).
:- not hasAngle(1,330,timemax).
:- not hasAngle(2,30,timemax).
:- not hasAngle(3,180,timemax).
:- not hasAngle(4,330,timemax).
:- not hasAngle(5,270,timemax).
:- not hasAngle(6,150,timemax).
:- not hasAngle(7,120,timemax).
:- not hasAngle(8,90,timemax).
:- not hasAngle(9,300,timemax).
:- not hasAngle(10,210,timemax).
