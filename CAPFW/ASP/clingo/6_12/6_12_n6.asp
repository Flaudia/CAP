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
joint(1..6).
hasAngle(1,210,0).
hasAngle(2,180,0).
hasAngle(3,120,0).
hasAngle(4,270,0).
hasAngle(5,120,0).
hasAngle(6,330,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,240,_).
:- not hasAngle(2,150,_).
:- not hasAngle(3,300,_).
:- not hasAngle(4,0,_).
:- not hasAngle(5,60,_).
:- not hasAngle(6,120,_).
