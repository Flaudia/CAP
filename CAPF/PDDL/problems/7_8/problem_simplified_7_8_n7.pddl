(define (problem joint_bar_7)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 link7 - link
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
    (IsChildOf link5 link4)
    (IsChildOf link6 link5)
    (IsChildOf link7 link6)

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

    (HasAngle angle135 link1)
    (HasAngle angle45 link2)
    (HasAngle angle135 link3)
    (HasAngle angle135 link4)
    (HasAngle angle270 link5)
    (HasAngle angle45 link6)
    (HasAngle angle225 link7)
)
(:goal
(and
    (HasAngle angle180 link1)
    (HasAngle angle90 link2)
    (HasAngle angle90 link3)
    (HasAngle angle315 link4)
    (HasAngle angle135 link5)
    (HasAngle angle90 link6)
    (HasAngle angle315 link7)
    )
)
)