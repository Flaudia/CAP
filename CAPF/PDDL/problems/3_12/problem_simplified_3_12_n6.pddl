(define (problem joint_bar_6)
(:domain joint_bar)
(:objects
    link1 link2 link3 - link
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

    (Affected link2 link1)
    (Affected link3 link1)
    (Affected link3 link2)

    (HasAngle angle270 link1)
    (HasAngle angle270 link2)
    (HasAngle angle30 link3)
)
(:goal
(and
    (HasAngle angle300 link1)
    (HasAngle angle90 link2)
    (HasAngle angle330 link3)
    )
)
)