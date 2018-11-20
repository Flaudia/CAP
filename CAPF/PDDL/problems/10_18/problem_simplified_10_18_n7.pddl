(define (problem joint_bar_7)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 link7 link8 link9 link10 - link
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

    (HasAngle angle320 link1)
    (HasAngle angle260 link2)
    (HasAngle angle300 link3)
    (HasAngle angle20 link4)
    (HasAngle angle80 link5)
    (HasAngle angle100 link6)
    (HasAngle angle20 link7)
    (HasAngle angle120 link8)
    (HasAngle angle100 link9)
    (HasAngle angle60 link10)
)
(:goal
(and
    (HasAngle angle160 link1)
    (HasAngle angle120 link2)
    (HasAngle angle200 link3)
    (HasAngle angle0 link4)
    (HasAngle angle40 link5)
    (HasAngle angle100 link6)
    (HasAngle angle40 link7)
    (HasAngle angle140 link8)
    (HasAngle angle0 link9)
    (HasAngle angle240 link10)
    )
)
)