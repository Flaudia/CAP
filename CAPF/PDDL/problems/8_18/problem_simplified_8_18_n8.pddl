(define (problem joint_bar_8)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 link7 link8 - link
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
    (IsChildOf link4 link3)
    (IsChildOf link5 link4)
    (IsChildOf link6 link5)
    (IsChildOf link7 link6)
    (IsChildOf link8 link7)

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

    (HasAngle angle180 link1)
    (HasAngle angle100 link2)
    (HasAngle angle260 link3)
    (HasAngle angle40 link4)
    (HasAngle angle0 link5)
    (HasAngle angle320 link6)
    (HasAngle angle180 link7)
    (HasAngle angle80 link8)
)
(:goal
(and
    (HasAngle angle300 link1)
    (HasAngle angle140 link2)
    (HasAngle angle160 link3)
    (HasAngle angle0 link4)
    (HasAngle angle300 link5)
    (HasAngle angle300 link6)
    (HasAngle angle120 link7)
    (HasAngle angle280 link8)
    )
)
)