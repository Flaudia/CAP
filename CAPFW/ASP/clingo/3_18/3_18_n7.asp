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
joint(1..3).
hasAngle(1,340,0).
hasAngle(2,20,0).
hasAngle(3,180,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,80,_).
:- not hasAngle(2,220,_).
:- not hasAngle(3,200,_).
