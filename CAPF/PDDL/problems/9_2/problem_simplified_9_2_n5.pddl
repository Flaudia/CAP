(define (problem joint_bar_5)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 link7 link8 link9 - link
    angle0 angle180 - angle)
(:init
    (AngleOrd angle0 angle180)
    (AngleOrd angle180 angle0)

    (IsChildOf link2 link1)
    (IsChildOf link3 link2)
    (IsChildOf link4 link3)
    (IsChildOf link5 link4)
    (IsChildOf link6 link5)
    (IsChildOf link7 link6)
    (IsChildOf link8 link7)
    (IsChildOf link9 link8)

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
    (Affected link8 link1)
    (Affected link8 link2)
    (Affected link8 link3)
    (Affected link8 link4)
    (Affected link8 link5)
    (Affected link8 link6)
    (Affected link8 link7)
    (Affected link9 link1)
    (Affected link9 link2)
    (Affected link9 link3)
    (Affected link9 link4)
    (Affected link9 link5)
    (Affected link9 link6)
    (Affected link9 link7)
    (Affected link9 link8)

    (HasAngle angle0 link1)
    (HasAngle angle0 link2)
    (HasAngle angle180 link3)
    (HasAngle angle0 link4)
    (HasAngle angle0 link5)
    (HasAngle angle0 link6)
    (HasAngle angle180 link7)
    (HasAngle angle180 link8)
    (HasAngle angle0 link9)
)
(:goal
(and
    (HasAngle angle180 link1)
    (HasAngle angle180 link2)
    (HasAngle angle0 link3)
    (HasAngle angle0 link4)
    (HasAngle angle0 link5)
    (HasAngle angle0 link6)
    (HasAngle angle0 link7)
    (HasAngle angle0 link8)
    (HasAngle angle180 link9)
    )
)
)