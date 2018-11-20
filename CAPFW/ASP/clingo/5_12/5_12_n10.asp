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
joint(1..5).
hasAngle(1,150,0).
hasAngle(2,180,0).
hasAngle(3,240,0).
hasAngle(4,300,0).
hasAngle(5,240,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
:- not hasAngle(1,270,_).
:- not hasAngle(2,90,_).
:- not hasAngle(3,0,_).
:- not hasAngle(4,150,_).
:- not hasAngle(5,30,_).
