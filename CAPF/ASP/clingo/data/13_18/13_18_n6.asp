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
hasAngle(1,280,0).
hasAngle(2,120,0).
hasAngle(3,140,0).
hasAngle(4,200,0).
hasAngle(5,220,0).
hasAngle(6,200,0).
hasAngle(7,200,0).
hasAngle(8,260,0).
hasAngle(9,60,0).
hasAngle(10,160,0).
hasAngle(11,280,0).
hasAngle(12,220,0).
hasAngle(13,0,0).
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
:- not hasAngle(1,200,timemax).
:- not hasAngle(2,220,timemax).
:- not hasAngle(3,200,timemax).
:- not hasAngle(4,200,timemax).
:- not hasAngle(5,260,timemax).
:- not hasAngle(6,60,timemax).
:- not hasAngle(7,160,timemax).
:- not hasAngle(8,280,timemax).
:- not hasAngle(9,220,timemax).
:- not hasAngle(10,0,timemax).
:- not hasAngle(11,340,timemax).
:- not hasAngle(12,140,timemax).
:- not hasAngle(13,320,timemax).
