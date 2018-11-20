(define (problem example)
(:domain paco3d)


(:objects L1 L2 L3 L4 - link
xyaxes ZAXES - axis
)

(:init

(= (speed-i) 10)
(= (speed-d) 10)
(= (speed-g) 0.1)
(= (angle L2 xyaxes) 60.0)
(= (angle L2 ZAXES) 10.0)
(= (angle L3 xyaxes) 20.0)
(= (angle L3 ZAXES) 145.0)
(= (angle L4 xyaxes) 0.0)
(= (angle L4 ZAXES) 20.0)

(freeToMove L1)
(freeToMove L2)
(freeToMove L3)
(freeToMove L4)
(connected L1 L2)
(connected L2 L3)
(connected L3 L4)

(affects L2 L3)
(affects L2 L4)
(affects L3 L4)


)

(:goal (and
	(> (angle L2 xyaxes) 30.0)
	(> (angle L2 ZAXES) 50.0)
	(> (angle L3 xyaxes) 30.0)
	(> (angle L3 ZAXES) 50.0)
	(> (angle L4 xyaxes) 30.0)
	(> (angle L4 ZAXES) 50.0)

) )
)

