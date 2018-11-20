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
joint(1..13).
hasAngle(1,110,0).
hasAngle(2,330,0).
hasAngle(3,210,0).
hasAngle(4,230,0).
hasAngle(5,190,0).
hasAngle(6,230,0).
hasAngle(7,120,0).
hasAngle(8,100,0).
hasAngle(9,130,0).
hasAngle(10,190,0).
hasAngle(11,290,0).
hasAngle(12,190,0).
hasAngle(13,40,0).
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
:- not hasAngle(1,230,_).
:- not hasAngle(2,190,_).
:- not hasAngle(3,230,_).
:- not hasAngle(4,120,_).
:- not hasAngle(5,100,_).
:- not hasAngle(6,130,_).
:- not hasAngle(7,190,_).
:- not hasAngle(8,290,_).
:- not hasAngle(9,190,_).
:- not hasAngle(10,40,_).
:- not hasAngle(11,10,_).
:- not hasAngle(12,320,_).
:- not hasAngle(13,60,_).
