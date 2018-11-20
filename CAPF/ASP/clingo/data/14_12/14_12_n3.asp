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
#const timemax = 20 .
time(0..timemax).
joint(1..14).
hasAngle(1,300,0).
hasAngle(2,150,0).
hasAngle(3,0,0).
hasAngle(4,120,0).
hasAngle(5,270,0).
hasAngle(6,180,0).
hasAngle(7,150,0).
hasAngle(8,60,0).
hasAngle(9,210,0).
hasAngle(10,120,0).
hasAngle(11,180,0).
hasAngle(12,150,0).
hasAngle(13,270,0).
hasAngle(14,120,0).
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
:- not hasAngle(1,120,timemax).
:- not hasAngle(2,270,timemax).
:- not hasAngle(3,180,timemax).
:- not hasAngle(4,150,timemax).
:- not hasAngle(5,60,timemax).
:- not hasAngle(6,210,timemax).
:- not hasAngle(7,120,timemax).
:- not hasAngle(8,180,timemax).
:- not hasAngle(9,150,timemax).
:- not hasAngle(10,270,timemax).
:- not hasAngle(11,120,timemax).
:- not hasAngle(12,120,timemax).
:- not hasAngle(13,30,timemax).
:- not hasAngle(14,270,timemax).
