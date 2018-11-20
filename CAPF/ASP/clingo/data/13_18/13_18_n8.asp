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
joint(1..13).
hasAngle(1,140,0).
hasAngle(2,60,0).
hasAngle(3,300,0).
hasAngle(4,60,0).
hasAngle(5,300,0).
hasAngle(6,20,0).
hasAngle(7,340,0).
hasAngle(8,40,0).
hasAngle(9,280,0).
hasAngle(10,240,0).
hasAngle(11,300,0).
hasAngle(12,240,0).
hasAngle(13,140,0).
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
:- not hasAngle(1,60,timemax).
:- not hasAngle(2,300,timemax).
:- not hasAngle(3,20,timemax).
:- not hasAngle(4,340,timemax).
:- not hasAngle(5,40,timemax).
:- not hasAngle(6,280,timemax).
:- not hasAngle(7,240,timemax).
:- not hasAngle(8,300,timemax).
:- not hasAngle(9,240,timemax).
:- not hasAngle(10,140,timemax).
:- not hasAngle(11,80,timemax).
:- not hasAngle(12,100,timemax).
:- not hasAngle(13,0,timemax).
