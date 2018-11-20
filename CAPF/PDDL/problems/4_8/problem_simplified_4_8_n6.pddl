(define (problem joint_bar_6)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 - link
    angle0 angle45 angle90 angle135 angle180 angle225 angle270 angle315 - angle)
(:init
    (AngleOrd angle0 angle45)
    (AngleOrd angle45 angle90)
    (AngleOrd angle90 angle135)
    (AngleOrd angle135 angle180)
    (AngleOrd angle180 angle225)
    (AngleOrd angle225 angle270)
    (AngleOrd angle270 angle315)
    (AngleOrd angle315 angle0)

    (IsChildOf link2 link1)
    (IsChildOf link3 link2)
    (IsChildOf link4 link3)

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)
    (Affected link4 link1)
    (Affected link4 link2)
    (Affected link4 link3)

    (HasAngle angle225 link1)
    (HasAngle angle0 link2)
    (HasAngle angle315 link3)
    (HasAngle angle90 link4)
)
(:goal
(and
    (HasAngle angle45 link1)
    (HasAngle angle0 link2)
    (HasAngle angle315 link3)
    (HasAngle angle0 link4)
    )
)
)