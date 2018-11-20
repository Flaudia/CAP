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
joint(1..4).
hasAngle(1,120,0).
hasAngle(2,260,0).
hasAngle(3,200,0).
hasAngle(4,60,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,60,_).
:- not hasAngle(2,40,_).
:- not hasAngle(3,200,_).
:- not hasAngle(4,180,_).
