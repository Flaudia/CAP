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
hasAngle(1,80,0).
hasAngle(2,200,0).
hasAngle(3,0,0).
hasAngle(4,40,0).
hasAngle(5,220,0).
hasAngle(6,260,0).
hasAngle(7,220,0).
hasAngle(8,340,0).
hasAngle(9,220,0).
hasAngle(10,100,0).
hasAngle(11,320,0).
hasAngle(12,260,0).
hasAngle(13,320,0).
hasAngle(14,280,0).
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
:- not hasAngle(1,40,timemax).
:- not hasAngle(2,220,timemax).
:- not hasAngle(3,260,timemax).
:- not hasAngle(4,220,timemax).
:- not hasAngle(5,340,timemax).
:- not hasAngle(6,220,timemax).
:- not hasAngle(7,100,timemax).
:- not hasAngle(8,320,timemax).
:- not hasAngle(9,260,timemax).
:- not hasAngle(10,320,timemax).
:- not hasAngle(11,280,timemax).
:- not hasAngle(12,220,timemax).
:- not hasAngle(13,260,timemax).
:- not hasAngle(14,20,timemax).
