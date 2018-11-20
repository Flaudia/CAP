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
hasAngle(1,330,0).
hasAngle(2,150,0).
hasAngle(3,270,0).
hasAngle(4,30,0).
hasAngle(5,210,0).
hasAngle(6,180,0).
hasAngle(7,30,0).
hasAngle(8,150,0).
hasAngle(9,270,0).
hasAngle(10,120,0).
hasAngle(11,0,0).
hasAngle(12,150,0).
hasAngle(13,150,0).
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
:- not hasAngle(1,0,_).
:- not hasAngle(2,150,_).
:- not hasAngle(3,0,_).
:- not hasAngle(4,330,_).
:- not hasAngle(5,90,_).
:- not hasAngle(6,300,_).
:- not hasAngle(7,150,_).
:- not hasAngle(8,60,_).
:- not hasAngle(9,60,_).
:- not hasAngle(10,180,_).
:- not hasAngle(11,240,_).
:- not hasAngle(12,300,_).
:- not hasAngle(13,300,_).
