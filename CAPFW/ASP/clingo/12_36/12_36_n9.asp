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
#const maxspan = 50 .
time(0..maxspan).
joint(1..12).
hasAngle(1,50,0).
hasAngle(2,90,0).
hasAngle(3,10,0).
hasAngle(4,300,0).
hasAngle(5,0,0).
hasAngle(6,130,0).
hasAngle(7,240,0).
hasAngle(8,140,0).
hasAngle(9,350,0).
hasAngle(10,20,0).
hasAngle(11,150,0).
hasAngle(12,280,0).
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
:- not hasAngle(1,300,_).
:- not hasAngle(2,0,_).
:- not hasAngle(3,130,_).
:- not hasAngle(4,240,_).
:- not hasAngle(5,140,_).
:- not hasAngle(6,350,_).
:- not hasAngle(7,20,_).
:- not hasAngle(8,150,_).
:- not hasAngle(9,280,_).
:- not hasAngle(10,150,_).
:- not hasAngle(11,160,_).
:- not hasAngle(12,90,_).
