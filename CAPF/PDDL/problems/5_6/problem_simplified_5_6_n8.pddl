(define (problem joint_bar_8)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 - link
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

    (HasAngle angle60 link1)
    (HasAngle angle240 link2)
    (HasAngle angle300 link3)
    (HasAngle angle180 link4)
    (HasAngle angle120 link5)
)
(:goal
(and
    (HasAngle angle60 link1)
    (HasAngle angle60 link2)
    (HasAngle angle180 link3)
    (HasAngle angle120 link4)
    (HasAngle angle300 link5)
    )
)
)