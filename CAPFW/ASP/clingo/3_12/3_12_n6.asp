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
joint(1..3).
hasAngle(1,270,0).
hasAngle(2,270,0).
hasAngle(3,30,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,300,_).
:- not hasAngle(2,90,_).
:- not hasAngle(3,330,_).
