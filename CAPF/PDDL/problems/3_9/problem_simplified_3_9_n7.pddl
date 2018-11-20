(define (problem joint_bar_7)
(:domain joint_bar)
(:objects
    link1 link2 link3 - link
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

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)

    (HasAngle angle80 link1)
    (HasAngle angle160 link2)
    (HasAngle angle200 link3)
)
(:goal
(and
    (HasAngle angle160 link1)
    (HasAngle angle80 link2)
    (HasAngle angle120 link3)
    )
)
)