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
joint(1..6).
hasAngle(1,160,0).
hasAngle(2,320,0).
hasAngle(3,240,0).
hasAngle(4,280,0).
hasAngle(5,220,0).
hasAngle(6,100,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,280,timemax).
:- not hasAngle(2,220,timemax).
:- not hasAngle(3,100,timemax).
:- not hasAngle(4,60,timemax).
:- not hasAngle(5,300,timemax).
:- not hasAngle(6,20,timemax).
