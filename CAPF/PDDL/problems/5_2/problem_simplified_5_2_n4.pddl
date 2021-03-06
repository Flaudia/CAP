(define (problem joint_bar_4)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 - link
    angle0 angle180 - angle)
(:init
    (AngleOrd angle0 angle180)
    (AngleOrd angle180 angle0)

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

    (HasAngle angle180 link1)
    (HasAngle angle180 link2)
    (HasAngle angle0 link3)
    (HasAngle angle180 link4)
    (HasAngle angle0 link5)
)
(:goal
(and
    (HasAngle angle180 link1)
    (HasAngle angle180 link2)
    (HasAngle angle180 link3)
    (HasAngle angle0 link4)
    (HasAngle angle0 link5)
    )
)
)