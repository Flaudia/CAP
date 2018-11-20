(define (problem joint_bar_6)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 link7 link8 link9 link10 link11 - link
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
    (IsChildOf link10 link9)
    (IsChildOf link11 link10)

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
    (Affected link10 link1)
    (Affected link10 link2)
    (Affected link10 link3)
    (Affected link10 link4)
    (Affected link10 link5)
    (Affected link10 link6)
    (Affected link10 link7)
    (Affected link10 link8)
    (Affected link10 link9)
    (Affected link11 link1)
    (Affected link11 link2)
    (Affected link11 link3)
    (Affected link11 link4)
    (Affected link11 link5)
    (Affected link11 link6)
    (Affected link11 link7)
    (Affected link11 link8)
    (Affected link11 link9)
    (Affected link11 link10)

    (HasAngle angle0 link1)
    (HasAngle angle0 link2)
    (HasAngle angle0 link3)
    (HasAngle angle180 link4)
    (HasAngle angle0 link5)
    (HasAngle angle180 link6)
    (HasAngle angle0 link7)
    (HasAngle angle180 link8)
    (HasAngle angle180 link9)
    (HasAngle angle180 link10)
    (HasAngle angle0 link11)
)
(:goal
(and
    (HasAngle angle180 link1)
    (HasAngle angle180 link2)
    (HasAngle angle0 link3)
    (HasAngle angle0 link4)
    (HasAngle angle180 link5)
    (HasAngle angle0 link6)
    (HasAngle angle180 link7)
    (HasAngle angle180 link8)
    (HasAngle angle0 link9)
    (HasAngle angle0 link10)
    (HasAngle angle180 link11)
    )
)
)