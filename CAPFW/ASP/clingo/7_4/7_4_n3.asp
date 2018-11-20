angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..7).
hasAngle(1,90,0).
hasAngle(2,0,0).
hasAngle(3,90,0).
hasAngle(4,0,0).
hasAngle(5,90,0).
hasAngle(6,0,0).
hasAngle(7,270,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
:- not hasAngle(1,180,_).
:- not hasAngle(2,0,_).
:- not hasAngle(3,270,_).
:- not hasAngle(4,0,_).
:- not hasAngle(5,180,_).
:- not hasAngle(6,0,_).
:- not hasAngle(7,90,_).
