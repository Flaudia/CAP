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
hasAngle(1,100,0).
hasAngle(2,0,0).
hasAngle(3,260,0).
hasAngle(4,180,0).
hasAngle(5,40,0).
hasAngle(6,180,0).
hasAngle(7,260,0).
hasAngle(8,200,0).
hasAngle(9,320,0).
hasAngle(10,220,0).
hasAngle(11,80,0).
hasAngle(12,280,0).
hasAngle(13,200,0).
hasAngle(14,60,0).
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
:- not hasAngle(1,180,timemax).
:- not hasAngle(2,40,timemax).
:- not hasAngle(3,180,timemax).
:- not hasAngle(4,260,timemax).
:- not hasAngle(5,200,timemax).
:- not hasAngle(6,320,timemax).
:- not hasAngle(7,220,timemax).
:- not hasAngle(8,80,timemax).
:- not hasAngle(9,280,timemax).
:- not hasAngle(10,200,timemax).
:- not hasAngle(11,60,timemax).
:- not hasAngle(12,220,timemax).
:- not hasAngle(13,40,timemax).
:- not hasAngle(14,20,timemax).
