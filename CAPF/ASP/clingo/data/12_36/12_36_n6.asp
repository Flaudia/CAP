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
joint(1..12).
hasAngle(1,330,0).
hasAngle(2,220,0).
hasAngle(3,230,0).
hasAngle(4,340,0).
hasAngle(5,170,0).
hasAngle(6,310,0).
hasAngle(7,280,0).
hasAngle(8,190,0).
hasAngle(9,340,0).
hasAngle(10,100,0).
hasAngle(11,210,0).
hasAngle(12,200,0).
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
:- not hasAngle(1,340,timemax).
:- not hasAngle(2,170,timemax).
:- not hasAngle(3,310,timemax).
:- not hasAngle(4,280,timemax).
:- not hasAngle(5,190,timemax).
:- not hasAngle(6,340,timemax).
:- not hasAngle(7,100,timemax).
:- not hasAngle(8,210,timemax).
:- not hasAngle(9,200,timemax).
:- not hasAngle(10,350,timemax).
:- not hasAngle(11,130,timemax).
:- not hasAngle(12,30,timemax).
