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
hasAngle(1,180,0).
hasAngle(2,100,0).
hasAngle(3,0,0).
hasAngle(4,40,0).
hasAngle(5,160,0).
hasAngle(6,300,0).
hasAngle(7,200,0).
hasAngle(8,20,0).
hasAngle(9,240,0).
hasAngle(10,100,0).
hasAngle(11,240,0).
hasAngle(12,260,0).
hasAngle(13,60,0).
hasAngle(14,100,0).
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
:- not hasAngle(2,160,timemax).
:- not hasAngle(3,300,timemax).
:- not hasAngle(4,200,timemax).
:- not hasAngle(5,20,timemax).
:- not hasAngle(6,240,timemax).
:- not hasAngle(7,100,timemax).
:- not hasAngle(8,240,timemax).
:- not hasAngle(9,260,timemax).
:- not hasAngle(10,60,timemax).
:- not hasAngle(11,100,timemax).
:- not hasAngle(12,120,timemax).
:- not hasAngle(13,140,timemax).
:- not hasAngle(14,0,timemax).
