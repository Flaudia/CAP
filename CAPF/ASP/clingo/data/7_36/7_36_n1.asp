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
#const timemax = 33 .
time(0..timemax).
joint(1..7).
hasAngle(1,50,0).
hasAngle(2,70,0).
hasAngle(3,70,0).
hasAngle(4,0,0).
hasAngle(5,80,0).
hasAngle(6,290,0).
hasAngle(7,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
:- not hasAngle(1,0,timemax).
:- not hasAngle(2,80,timemax).
:- not hasAngle(3,290,timemax).
:- not hasAngle(4,180,timemax).
:- not hasAngle(5,210,timemax).
:- not hasAngle(6,90,timemax).
:- not hasAngle(7,310,timemax).
