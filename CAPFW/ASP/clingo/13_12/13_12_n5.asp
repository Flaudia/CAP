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
#const maxspan = 50 .
time(0..maxspan).
joint(1..13).
hasAngle(1,30,0).
hasAngle(2,90,0).
hasAngle(3,90,0).
hasAngle(4,180,0).
hasAngle(5,0,0).
hasAngle(6,150,0).
hasAngle(7,60,0).
hasAngle(8,270,0).
hasAngle(9,180,0).
hasAngle(10,30,0).
hasAngle(11,60,0).
hasAngle(12,60,0).
hasAngle(13,300,0).
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
:- not hasAngle(1,60,_).
:- not hasAngle(2,300,_).
:- not hasAngle(3,210,_).
:- not hasAngle(4,180,_).
:- not hasAngle(5,300,_).
:- not hasAngle(6,270,_).
:- not hasAngle(7,150,_).
:- not hasAngle(8,60,_).
:- not hasAngle(9,30,_).
:- not hasAngle(10,180,_).
:- not hasAngle(11,300,_).
:- not hasAngle(12,0,_).
:- not hasAngle(13,180,_).
