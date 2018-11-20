(define (problem joint_bar_5)
(:domain joint_bar)
(:objects
    link1 link2 link3 link4 link5 link6 - link
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

    (HasAngle angle30 link1)
    (HasAngle angle330 link2)
    (HasAngle angle270 link3)
    (HasAngle angle30 link4)
    (HasAngle angle330 link5)
    (HasAngle angle210 link6)
)
(:goal
(and
    (HasAngle angle30 link1)
    (HasAngle angle150 link2)
    (HasAngle angle0 link3)
    (HasAngle angle270 link4)
    (HasAngle angle30 link5)
    (HasAngle angle210 link6)
    )
)
)