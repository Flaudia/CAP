angles(0).
angles(40).
angles(80).
angles(120).
angles(160).
angles(200).
angles(240).
angles(280).
angles(320).
#const granularity = 40 .
#const maxspan = 50 .
time(0..maxspan).
joint(1..4).
hasAngle(1,200,0).
hasAngle(2,200,0).
hasAngle(3,80,0).
hasAngle(4,200,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
:- not hasAngle(1,120,_).
:- not hasAngle(2,200,_).
:- not hasAngle(3,280,_).
:- not hasAngle(4,40,_).
