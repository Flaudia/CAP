(define (problem joint_bar_2)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 link7 link8 link9 link10 - link
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

    (HasAngle angle130 link1)
    (HasAngle angle290 link2)
    (HasAngle angle110 link3)
    (HasAngle angle300 link4)
    (HasAngle angle40 link5)
    (HasAngle angle270 link6)
    (HasAngle angle140 link7)
    (HasAngle angle330 link8)
    (HasAngle angle220 link9)
    (HasAngle angle330 link10)
)
(:goal
(and
    (HasAngle angle230 link1)
    (HasAngle angle70 link2)
    (HasAngle angle190 link3)
    (HasAngle angle270 link4)
    (HasAngle angle300 link5)
    (HasAngle angle210 link6)
    (HasAngle angle80 link7)
    (HasAngle angle80 link8)
    (HasAngle angle230 link9)
    (HasAngle angle270 link10)
    )
)
)