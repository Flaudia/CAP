(define (problem joint_bar_2)
(:domain joint_bar)
(:objects
    link1 link2 link3 - link
    angle0 angle60 angle120 angle180 angle240 angle300 - angle)
(:init
    (AngleOrd angle0 angle60)
    (AngleOrd angle60 angle120)
    (AngleOrd angle120 angle180)
    (AngleOrd angle180 angle240)
    (AngleOrd angle240 angle300)
    (AngleOrd angle300 angle0)

    (IsChildOf link2 link1)
    (IsChildOf link3 link2)

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)

    (HasAngle angle180 link1)
    (HasAngle angle60 link2)
    (HasAngle angle180 link3)
)
(:goal
(and
    (HasAngle angle240 link1)
    (HasAngle angle0 link2)
    (HasAngle angle240 link3)
    )
)
)