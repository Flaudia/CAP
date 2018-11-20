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
joint(1..11).
hasAngle(1,100,0).
hasAngle(2,200,0).
hasAngle(3,310,0).
hasAngle(4,230,0).
hasAngle(5,230,0).
hasAngle(6,10,0).
hasAngle(7,30,0).
hasAngle(8,260,0).
hasAngle(9,50,0).
hasAngle(10,300,0).
hasAngle(11,220,0).
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
:- not hasAngle(1,230,timemax).
:- not hasAngle(2,230,timemax).
:- not hasAngle(3,10,timemax).
:- not hasAngle(4,30,timemax).
:- not hasAngle(5,260,timemax).
:- not hasAngle(6,50,timemax).
:- not hasAngle(7,300,timemax).
:- not hasAngle(8,220,timemax).
:- not hasAngle(9,230,timemax).
:- not hasAngle(10,260,timemax).
:- not hasAngle(11,340,timemax).
