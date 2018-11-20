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
joint(1..11).
hasAngle(1,270,0).
hasAngle(2,180,0).
hasAngle(3,60,0).
hasAngle(4,150,0).
hasAngle(5,60,0).
hasAngle(6,150,0).
hasAngle(7,180,0).
hasAngle(8,0,0).
hasAngle(9,30,0).
hasAngle(10,300,0).
hasAngle(11,330,0).
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
:- not hasAngle(1,150,timemax).
:- not hasAngle(2,60,timemax).
:- not hasAngle(3,150,timemax).
:- not hasAngle(4,180,timemax).
:- not hasAngle(5,0,timemax).
:- not hasAngle(6,30,timemax).
:- not hasAngle(7,300,timemax).
:- not hasAngle(8,330,timemax).
:- not hasAngle(9,270,timemax).
:- not hasAngle(10,30,timemax).
:- not hasAngle(11,150,timemax).
