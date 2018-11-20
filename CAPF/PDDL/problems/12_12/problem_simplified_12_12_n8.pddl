(define (problem joint_bar_8)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 link7 link8 link9 link10 link11 link12 - link
    angle0 angle30 angle60 angle90 angle120 angle150 angle180 angle210 angle240 angle270 angle300 angle330 - angle)
(:init
    (AngleOrd angle0 angle30)
    (AngleOrd angle30 angle60)
    (AngleOrd angle60 angle90)
    (AngleOrd angle90 angle120)
    (AngleOrd angle120 angle150)
    (AngleOrd angle150 angle180)
    (AngleOrd angle180 angle210)
    (AngleOrd angle210 angle240)
    (AngleOrd angle240 angle270)
    (AngleOrd angle270 angle300)
    (AngleOrd angle300 angle330)
    (AngleOrd angle330 angle0)

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
    (IsChildOf link12 link11)

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
    (Affected link12 link1)
    (Affected link12 link2)
    (Affected link12 link3)
    (Affected link12 link4)
    (Affected link12 link5)
    (Affected link12 link6)
    (Affected link12 link7)
    (Affected link12 link8)
    (Affected link12 link9)
    (Affected link12 link10)
    (Affected link12 link11)

    (HasAngle angle0 link1)
    (HasAngle angle210 link2)
    (HasAngle angle180 link3)
    (HasAngle angle60 link4)
    (HasAngle angle120 link5)
    (HasAngle angle90 link6)
    (HasAngle angle30 link7)
    (HasAngle angle330 link8)
    (HasAngle angle180 link9)
    (HasAngle angle240 link10)
    (HasAngle angle90 link11)
    (HasAngle angle150 link12)
)
(:goal
(and
    (HasAngle angle210 link1)
    (HasAngle angle210 link2)
    (HasAngle angle240 link3)
    (HasAngle angle60 link4)
    (HasAngle angle150 link5)
    (HasAngle angle60 link6)
    (HasAngle angle150 link7)
    (HasAngle angle90 link8)
    (HasAngle angle270 link9)
    (HasAngle angle330 link10)
    (HasAngle angle0 link11)
    (HasAngle angle330 link12)
    )
)
)