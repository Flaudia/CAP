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
joint(1..14).
hasAngle(1,140,0).
hasAngle(2,320,0).
hasAngle(3,240,0).
hasAngle(4,20,0).
hasAngle(5,340,0).
hasAngle(6,0,0).
hasAngle(7,160,0).
hasAngle(8,140,0).
hasAngle(9,340,0).
hasAngle(10,340,0).
hasAngle(11,280,0).
hasAngle(12,60,0).
hasAngle(13,180,0).
hasAngle(14,80,0).
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
isLinked(13,14).
:- not hasAngle(1,20,timemax).
:- not hasAngle(2,340,timemax).
:- not hasAngle(3,0,timemax).
:- not hasAngle(4,160,timemax).
:- not hasAngle(5,140,timemax).
:- not hasAngle(6,340,timemax).
:- not hasAngle(7,340,timemax).
:- not hasAngle(8,280,timemax).
:- not hasAngle(9,60,timemax).
:- not hasAngle(10,180,timemax).
:- not hasAngle(11,80,timemax).
:- not hasAngle(12,320,timemax).
:- not hasAngle(13,220,timemax).
:- not hasAngle(14,80,timemax).
