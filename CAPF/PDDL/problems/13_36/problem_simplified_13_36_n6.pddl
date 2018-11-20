(define (problem joint_bar_6)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 link7 link8 link9 link10 link11 link12 link13 - link
    angle0 angle10 angle20 angle30 angle40 angle50 angle60 angle70 angle80 angle90 angle100 angle110 angle120 angle130 angle140 angle150 angle160 angle170 angle180 angle190 angle200 angle210 angle220 angle230 angle240 angle250 angle260 angle270 angle280 angle290 angle300 angle310 angle320 angle330 angle340 angle350 - angle)
(:init
    (AngleOrd angle0 angle10)
    (AngleOrd angle10 angle20)
    (AngleOrd angle20 angle30)
    (AngleOrd angle30 angle40)
    (AngleOrd angle40 angle50)
    (AngleOrd angle50 angle60)
    (AngleOrd angle60 angle70)
    (AngleOrd angle70 angle80)
    (AngleOrd angle80 angle90)
    (AngleOrd angle90 angle100)
    (AngleOrd angle100 angle110)
    (AngleOrd angle110 angle120)
    (AngleOrd angle120 angle130)
    (AngleOrd angle130 angle140)
    (AngleOrd angle140 angle150)
    (AngleOrd angle150 angle160)
    (AngleOrd angle160 angle170)
    (AngleOrd angle170 angle180)
    (AngleOrd angle180 angle190)
    (AngleOrd angle190 angle200)
    (AngleOrd angle200 angle210)
    (AngleOrd angle210 angle220)
    (AngleOrd angle220 angle230)
    (AngleOrd angle230 angle240)
    (AngleOrd angle240 angle250)
    (AngleOrd angle250 angle260)
    (AngleOrd angle260 angle270)
    (AngleOrd angle270 angle280)
    (AngleOrd angle280 angle290)
    (AngleOrd angle290 angle300)
    (AngleOrd angle300 angle310)
    (AngleOrd angle310 angle320)
    (AngleOrd angle320 angle330)
    (AngleOrd angle330 angle340)
    (AngleOrd angle340 angle350)
    (AngleOrd angle350 angle0)

    (IsChildOf link2 link1)
    (IsChildOf link3 link2)
    (IsChildOf link4 link3)
    (IsChildOf link5 link4)
    (IsChildOf link6 link5)
    (IsChildOf link7 link6)
    (IsChildOf link8 link7)
    (IsChildOf link9 link8)
    (IsChildOf link10 link9)
    (IsChildOf link11 link10)
    (IsChildOf link12 link11)
    (IsChildOf link13 link12)

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)
    (Affected link4 link1)
    (Affected link4 link2)
    (Affected link4 link3)
    (Affected link5 link1)
    (Affected link5 link2)
    (Affected link5 link3)
    (Affected link5 link4)
    (Affected link6 link1)
    (Affected link6 link2)
    (Affected link6 link3)
    (Affected link6 link4)
    (Affected link6 link5)
    (Affected link7 link1)
    (Affected link7 link2)
    (Affected link7 link3)
    (Affected link7 link4)
    (Affected link7 link5)
    (Affected link7 link6)
    (Affected link8 link1)
    (Affected link8 link2)
    (Affected link8 link3)
    (Affected link8 link4)
    (Affected link8 link5)
    (Affected link8 link6)
    (Affected link8 link7)
    (Affected link9 link1)
    (Affected link9 link2)
    (Affected link9 link3)
    (Affected link9 link4)
    (Affected link9 link5)
    (Affected link9 link6)
    (Affected link9 link7)
    (Affected link9 link8)
    (Affected link10 link1)
    (Affected link10 link2)
    (Affected link10 link3)
    (Affected link10 link4)
    (Affected link10 link5)
    (Affected link10 link6)
    (Affected link10 link7)
    (Affected link10 link8)
    (Affected link10 link9)
    (Affected link11 link1)
    (Affected link11 link2)
    (Affected link11 link3)
    (Affected link11 link4)
    (Affected link11 link5)
    (Affected link11 link6)
    (Affected link11 link7)
    (Affected link11 link8)
    (Affected link11 link9)
    (Affected link11 link10)
    (Affected link12 link1)
    (Affected link12 link2)
    (Affected link12 link3)
    (Affected link12 link4)
    (Affected link12 link5)
    (Affected link12 link6)
    (Affected link12 link7)
    (Affected link12 link8)
    (Affected link12 link9)
    (Affected link12 link10)
    (Affected link12 link11)
    (Affected link13 link1)
    (Affected link13 link2)
    (Affected link13 link3)
    (Affected link13 link4)
    (Affected link13 link5)
    (Affected link13 link6)
    (Affected link13 link7)
    (Affected link13 link8)
    (Affected link13 link9)
    (Affected link13 link10)
    (Affected link13 link11)
    (Affected link13 link12)

    (HasAngle angle250 link1)
    (HasAngle angle210 link2)
    (HasAngle angle90 link3)
    (HasAngle angle210 link4)
    (HasAngle angle270 link5)
    (HasAngle angle250 link6)
    (HasAngle angle210 link7)
    (HasAngle angle210 link8)
    (HasAngle angle280 link9)
    (HasAngle angle20 link10)
    (HasAngle angle0 link11)
    (HasAngle angle80 link12)
    (HasAngle angle210 link13)
)
(:goal
(and
    (HasAngle angle350 link1)
    (HasAngle angle120 link2)
    (HasAngle angle310 link3)
    (HasAngle angle120 link4)
    (HasAngle angle300 link5)
    (HasAngle angle340 link6)
    (HasAngle angle290 link7)
    (HasAngle angle130 link8)
    (HasAngle angle120 link9)
    (HasAngle angle10 link10)
    (HasAngle angle40 link11)
    (HasAngle angle260 link12)
    (HasAngle angle340 link13)
    )
)
)