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
joint(1..6).
hasAngle(1,90,0).
hasAngle(2,170,0).
hasAngle(3,250,0).
hasAngle(4,350,0).
hasAngle(5,180,0).
hasAngle(6,240,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
:- not hasAngle(1,350,timemax).
:- not hasAngle(2,180,timemax).
:- not hasAngle(3,240,timemax).
:- not hasAngle(4,170,timemax).
:- not hasAngle(5,300,timemax).
:- not hasAngle(6,180,timemax).
