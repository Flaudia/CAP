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
#const timemax = 15 .
time(0..timemax).
joint(1..14).
hasAngle(1,120,0).
hasAngle(2,270,0).
hasAngle(3,180,0).
hasAngle(4,210,0).
hasAngle(5,60,0).
hasAngle(6,30,0).
hasAngle(7,330,0).
hasAngle(8,60,0).
hasAngle(9,150,0).
hasAngle(10,150,0).
hasAngle(11,60,0).
hasAngle(12,0,0).
hasAngle(13,270,0).
hasAngle(14,150,0).
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
isLinked(12,13).
isLinked(13,14).
:- not hasAngle(1,210,timemax).
:- not hasAngle(2,60,timemax).
:- not hasAngle(3,30,timemax).
:- not hasAngle(4,330,timemax).
:- not hasAngle(5,60,timemax).
:- not hasAngle(6,150,timemax).
:- not hasAngle(7,150,timemax).
:- not hasAngle(8,60,timemax).
:- not hasAngle(9,0,timemax).
:- not hasAngle(10,270,timemax).
:- not hasAngle(11,150,timemax).
:- not hasAngle(12,210,timemax).
:- not hasAngle(13,300,timemax).
:- not hasAngle(14,150,timemax).
