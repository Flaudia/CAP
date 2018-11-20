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
joint(1..9).
hasAngle(1,0,0).
hasAngle(2,150,0).
hasAngle(3,0,0).
hasAngle(4,180,0).
hasAngle(5,0,0).
hasAngle(6,90,0).
hasAngle(7,0,0).
hasAngle(8,330,0).
hasAngle(9,150,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
:- not hasAngle(1,300,_).
:- not hasAngle(2,270,_).
:- not hasAngle(3,60,_).
:- not hasAngle(4,0,_).
:- not hasAngle(5,240,_).
:- not hasAngle(6,240,_).
:- not hasAngle(7,180,_).
:- not hasAngle(8,30,_).
:- not hasAngle(9,60,_).
