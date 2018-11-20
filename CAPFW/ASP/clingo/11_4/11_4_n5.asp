angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..11).
hasAngle(1,180,0).
hasAngle(2,90,0).
hasAngle(3,0,0).
hasAngle(4,180,0).
hasAngle(5,270,0).
hasAngle(6,270,0).
hasAngle(7,90,0).
hasAngle(8,180,0).
hasAngle(9,180,0).
hasAngle(10,180,0).
hasAngle(11,270,0).
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
:- not hasAngle(1,270,_).
:- not hasAngle(2,90,_).
:- not hasAngle(3,90,_).
:- not hasAngle(4,0,_).
:- not hasAngle(5,180,_).
:- not hasAngle(6,0,_).
:- not hasAngle(7,0,_).
:- not hasAngle(8,270,_).
:- not hasAngle(9,270,_).
:- not hasAngle(10,180,_).
:- not hasAngle(11,180,_).
