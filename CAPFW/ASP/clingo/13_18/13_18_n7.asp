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
#const maxspan = 50 .
time(0..maxspan).
joint(1..13).
hasAngle(1,280,0).
hasAngle(2,0,0).
hasAngle(3,120,0).
hasAngle(4,200,0).
hasAngle(5,160,0).
hasAngle(6,320,0).
hasAngle(7,80,0).
hasAngle(8,40,0).
hasAngle(9,260,0).
hasAngle(10,180,0).
hasAngle(11,60,0).
hasAngle(12,320,0).
hasAngle(13,60,0).
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
:- not hasAngle(1,200,_).
:- not hasAngle(2,160,_).
:- not hasAngle(3,320,_).
:- not hasAngle(4,80,_).
:- not hasAngle(5,40,_).
:- not hasAngle(6,260,_).
:- not hasAngle(7,180,_).
:- not hasAngle(8,60,_).
:- not hasAngle(9,320,_).
:- not hasAngle(10,60,_).
:- not hasAngle(11,0,_).
:- not hasAngle(12,200,_).
:- not hasAngle(13,180,_).
