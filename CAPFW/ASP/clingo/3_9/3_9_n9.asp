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
joint(1..3).
hasAngle(1,240,0).
hasAngle(2,120,0).
hasAngle(3,320,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,280,_).
:- not hasAngle(2,0,_).
:- not hasAngle(3,240,_).
