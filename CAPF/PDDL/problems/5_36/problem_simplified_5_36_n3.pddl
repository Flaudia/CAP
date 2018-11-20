(define (problem joint_bar_3)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 - link
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

    (HasAngle angle120 link1)
    (HasAngle angle0 link2)
    (HasAngle angle40 link3)
    (HasAngle angle210 link4)
    (HasAngle angle90 link5)
)
(:goal
(and
    (HasAngle angle100 link1)
    (HasAngle angle320 link2)
    (HasAngle angle20 link3)
    (HasAngle angle100 link4)
    (HasAngle angle310 link5)
    )
)
)