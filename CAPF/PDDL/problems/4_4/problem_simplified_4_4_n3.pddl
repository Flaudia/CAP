(define (problem joint_bar_3)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 - link
    angle0 angle90 angle180 angle270 - angle)
(:init
    (AngleOrd angle0 angle90)
    (AngleOrd angle90 angle180)
    (AngleOrd angle180 angle270)
    (AngleOrd angle270 angle0)

    (IsChildOf link2 link1)
    (IsChildOf link3 link2)
    (IsChildOf link4 link3)

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)
    (Affected link4 link1)
    (Affected link4 link2)
    (Affected link4 link3)

    (HasAngle angle180 link1)
    (HasAngle angle180 link2)
    (HasAngle angle0 link3)
    (HasAngle angle270 link4)
)
(:goal
(and
    (HasAngle angle90 link1)
    (HasAngle angle180 link2)
    (HasAngle angle180 link3)
    (HasAngle angle0 link4)
    )
)
)