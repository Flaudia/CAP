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
joint(1..5).
hasAngle(1,220,0).
hasAngle(2,240,0).
hasAngle(3,120,0).
hasAngle(4,300,0).
hasAngle(5,340,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
:- not hasAngle(1,300,_).
:- not hasAngle(2,340,_).
:- not hasAngle(3,40,_).
:- not hasAngle(4,260,_).
:- not hasAngle(5,260,_).
