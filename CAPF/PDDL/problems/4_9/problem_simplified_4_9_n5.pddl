(define (problem joint_bar_5)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 - link
    angle0 angle40 angle80 angle120 angle160 angle200 angle240 angle280 angle320 - angle)
(:init
    (AngleOrd angle0 angle40)
    (AngleOrd angle40 angle80)
    (AngleOrd angle80 angle120)
    (AngleOrd angle120 angle160)
    (AngleOrd angle160 angle200)
    (AngleOrd angle200 angle240)
    (AngleOrd angle240 angle280)
    (AngleOrd angle280 angle320)
    (AngleOrd angle320 angle0)

    (IsChildOf link2 link1)
    (IsChildOf link3 link2)
    (IsChildOf link4 link3)

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)
    (Affected link4 link1)
    (Affected link4 link2)
    (Affected link4 link3)

    (HasAngle angle200 link1)
    (HasAngle angle0 link2)
    (HasAngle angle160 link3)
    (HasAngle angle80 link4)
)
(:goal
(and
    (HasAngle angle120 link1)
    (HasAngle angle40 link2)
    (HasAngle angle200 link3)
    (HasAngle angle320 link4)
    )
)
)