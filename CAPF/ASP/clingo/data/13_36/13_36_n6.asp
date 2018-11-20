angles(0).
angles(10).
angles(20).
angles(30).
angles(40).
angles(50).
angles(60).
angles(70).
angles(80).
angles(90).
angles(100).
angles(110).
angles(120).
angles(130).
angles(140).
angles(150).
angles(160).
angles(170).
angles(180).
angles(190).
angles(200).
angles(210).
angles(220).
angles(230).
angles(240).
angles(250).
angles(260).
angles(270).
angles(280).
angles(290).
angles(300).
angles(310).
angles(320).
angles(330).
angles(340).
angles(350).
#const granularity = 10 .
#const timemax = 1 .
time(0..timemax).
joint(1..13).
hasAngle(1,250,0).
hasAngle(2,210,0).
hasAngle(3,90,0).
hasAngle(4,210,0).
hasAngle(5,270,0).
hasAngle(6,250,0).
hasAngle(7,210,0).
hasAngle(8,210,0).
hasAngle(9,280,0).
hasAngle(10,20,0).
hasAngle(11,0,0).
hasAngle(12,80,0).
hasAngle(13,210,0).
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
:- not hasAngle(1,210,timemax).
:- not hasAngle(2,270,timemax).
:- not hasAngle(3,250,timemax).
:- not hasAngle(4,210,timemax).
:- not hasAngle(5,210,timemax).
:- not hasAngle(6,280,timemax).
:- not hasAngle(7,20,timemax).
:- not hasAngle(8,0,timemax).
:- not hasAngle(9,80,timemax).
:- not hasAngle(10,210,timemax).
:- not hasAngle(11,350,timemax).
:- not hasAngle(12,120,timemax).
:- not hasAngle(13,310,timemax).