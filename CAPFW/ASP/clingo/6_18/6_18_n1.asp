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
joint(1..6).
hasAngle(1,20,0).
hasAngle(2,20,0).
hasAngle(3,100,0).
hasAngle(4,340,0).
hasAngle(5,100,0).
hasAngle(6,0,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,340,_).
:- not hasAngle(2,100,_).
:- not hasAngle(3,0,_).
:- not hasAngle(4,140,_).
:- not hasAngle(5,340,_).
:- not hasAngle(6,320,_).
