angles(0).
angles(20).
angles(40).
angles(60).
angles(80).
angles(100).
angles(120).
angles(140).
angles(160).
angles(180).
angles(200).
angles(220).
angles(240).
angles(260).
angles(280).
angles(300).
angles(320).
angles(340).
#const granularity = 20 .
#const timemax = 1 .
time(0..timemax).
joint(1..8).
hasAngle(1,80,0).
hasAngle(2,60,0).
hasAngle(3,180,0).
hasAngle(4,320,0).
hasAngle(5,200,0).
hasAngle(6,240,0).
hasAngle(7,20,0).
hasAngle(8,80,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
:- not hasAngle(1,320,timemax).
:- not hasAngle(2,200,timemax).
:- not hasAngle(3,240,timemax).
:- not hasAngle(4,20,timemax).
:- not hasAngle(5,80,timemax).
:- not hasAngle(6,60,timemax).
:- not hasAngle(7,340,timemax).
:- not hasAngle(8,200,timemax).
