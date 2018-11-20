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
joint(1..12).
hasAngle(1,90,0).
hasAngle(2,90,0).
hasAngle(3,0,0).
hasAngle(4,330,0).
hasAngle(5,0,0).
hasAngle(6,180,0).
hasAngle(7,90,0).
hasAngle(8,210,0).
hasAngle(9,120,0).
hasAngle(10,30,0).
hasAngle(11,240,0).
hasAngle(12,240,0).
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
isLinked(11,12).
:- not hasAngle(1,330,timemax).
:- not hasAngle(2,0,timemax).
:- not hasAngle(3,180,timemax).
:- not hasAngle(4,90,timemax).
:- not hasAngle(5,210,timemax).
:- not hasAngle(6,120,timemax).
:- not hasAngle(7,30,timemax).
:- not hasAngle(8,240,timemax).
:- not hasAngle(9,240,timemax).
:- not hasAngle(10,300,timemax).
:- not hasAngle(11,90,timemax).
:- not hasAngle(12,150,timemax).
