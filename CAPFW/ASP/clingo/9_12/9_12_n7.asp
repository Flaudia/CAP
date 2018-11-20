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
hasAngle(1,180,0).
hasAngle(2,330,0).
hasAngle(3,60,0).
hasAngle(4,150,0).
hasAngle(5,120,0).
hasAngle(6,330,0).
hasAngle(7,210,0).
hasAngle(8,270,0).
hasAngle(9,270,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
:- not hasAngle(1,270,_).
:- not hasAngle(2,150,_).
:- not hasAngle(3,60,_).
:- not hasAngle(4,150,_).
:- not hasAngle(5,240,_).
:- not hasAngle(6,60,_).
:- not hasAngle(7,240,_).
:- not hasAngle(8,300,_).
:- not hasAngle(9,90,_).
