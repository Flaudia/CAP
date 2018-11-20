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
joint(1..3).
hasAngle(1,140,0).
hasAngle(2,340,0).
hasAngle(3,40,0).
isLinked(1,2).
isLinked(2,3).
:- not hasAngle(1,200,timemax).
:- not hasAngle(2,180,timemax).
:- not hasAngle(3,120,timemax).
