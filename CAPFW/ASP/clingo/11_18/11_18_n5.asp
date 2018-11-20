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
joint(1..11).
hasAngle(1,0,0).
hasAngle(2,140,0).
hasAngle(3,0,0).
hasAngle(4,280,0).
hasAngle(5,120,0).
hasAngle(6,0,0).
hasAngle(7,220,0).
hasAngle(8,180,0).
hasAngle(9,140,0).
hasAngle(10,180,0).
hasAngle(11,20,0).
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
:- not hasAngle(1,280,_).
:- not hasAngle(2,120,_).
:- not hasAngle(3,0,_).
:- not hasAngle(4,220,_).
:- not hasAngle(5,180,_).
:- not hasAngle(6,140,_).
:- not hasAngle(7,180,_).
:- not hasAngle(8,20,_).
:- not hasAngle(9,320,_).
:- not hasAngle(10,260,_).
:- not hasAngle(11,340,_).
