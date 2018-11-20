(define (problem joint_bar_3)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 - link
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
    (IsChildOf link4 link3)

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)
    (Affected link4 link1)
    (Affected link4 link2)
    (Affected link4 link3)

    (HasAngle angle300 link1)
    (HasAngle angle300 link2)
    (HasAngle angle120 link3)
    (HasAngle angle0 link4)
)
(:goal
(and
    (HasAngle angle240 link1)
    (HasAngle angle120 link2)
    (HasAngle angle60 link3)
    (HasAngle angle0 link4)
    )
)
)