(define (problem joint_bar_1)
(:domain joint_bar)
(:objects
    link1 link2 link3 - link
    angle0 angle180 - angle)
(:init
    (AngleOrd angle0 angle180)
    (AngleOrd angle180 angle0)

    (IsChildOf link2 link1)
    (IsChildOf link3 link2)

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)

    (HasAngle angle0 link1)
    (HasAngle angle180 link2)
    (HasAngle angle0 link3)
)
(:goal
(and
    (HasAngle angle180 link1)
    (HasAngle angle0 link2)
    (HasAngle angle180 link3)
    )
)
)