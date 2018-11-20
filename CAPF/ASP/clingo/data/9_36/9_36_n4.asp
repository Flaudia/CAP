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
joint(1..9).
hasAngle(1,200,0).
hasAngle(2,180,0).
hasAngle(3,330,0).
hasAngle(4,100,0).
hasAngle(5,340,0).
hasAngle(6,80,0).
hasAngle(7,350,0).
hasAngle(8,220,0).
hasAngle(9,340,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
:- not hasAngle(1,100,timemax).
:- not hasAngle(2,340,timemax).
:- not hasAngle(3,80,timemax).
:- not hasAngle(4,350,timemax).
:- not hasAngle(5,220,timemax).
:- not hasAngle(6,340,timemax).
:- not hasAngle(7,90,timemax).
:- not hasAngle(8,320,timemax).
:- not hasAngle(9,80,timemax).
