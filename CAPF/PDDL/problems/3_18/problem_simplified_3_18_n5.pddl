(define (problem joint_bar_5)
(:domain joint_bar)
(:objects
    link1 link2 link3 - link
    angle0 angle20 angle40 angle60 angle80 angle100 angle120 angle140 angle160 angle180 angle200 angle220 angle240 angle260 angle280 angle300 angle320 angle340 - angle)
(:init
    (AngleOrd angle0 angle20)
    (AngleOrd angle20 angle40)
    (AngleOrd angle40 angle60)
    (AngleOrd angle60 angle80)
    (AngleOrd angle80 angle100)
    (AngleOrd angle100 angle120)
    (AngleOrd angle120 angle140)
    (AngleOrd angle140 angle160)
    (AngleOrd angle160 angle180)
    (AngleOrd angle180 angle200)
    (AngleOrd angle200 angle220)
    (AngleOrd angle220 angle240)
    (AngleOrd angle240 angle260)
    (AngleOrd angle260 angle280)
    (AngleOrd angle280 angle300)
    (AngleOrd angle300 angle320)
    (AngleOrd angle320 angle340)
    (AngleOrd angle340 angle0)

    (IsChildOf link2 link1)
    (IsChildOf link3 link2)

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)

    (HasAngle angle0 link1)
    (HasAngle angle100 link2)
    (HasAngle angle340 link3)
)
(:goal
(and
    (HasAngle angle40 link1)
    (HasAngle angle80 link2)
    (HasAngle angle120 link3)
    )
)
)