(define (problem example)
(:domain paco3d)


(:objects L1 L2 L3 L4 L5 - link
xyaxes ZAXES - axis
)

(:init

(= (speed-i) 10)
(= (speed-d) 10)
(= (angle L2 xyaxes) 0.0)
(= (angle L2 ZAXES) 40.0)
(= (angle L3 xyaxes) 0.0)
(= (angle L3 ZAXES) 140.0)
(= (angle L4 xyaxes) 0.0)
(= (angle L4 ZAXES) 10.0)
(= (angle L5 xyaxes) 260.0)
(= (angle L5 ZAXES) 40.0)

(freeToMove L1)
(freeToMove L2)
(freeToMove L3)
(freeToMove L4)
(freeToMove L5)
(connected L1 L2)
(connected L2 L3)
(connected L3 L4)
(connected L4 L5)

(affects L2 L3)
(affects L2 L4)
(affects L2 L5)
(affects L3 L4)
(affects L3 L5)

)

(:goal (and
	(> (angle L2 xyaxes) 30.0)
	(> (angle L2 ZAXES) 50.0)
	(> (angle L3 xyaxes) 30.0)
;;	(< (angle L2 L3 ZAXES) 39.5)
;;	(> (angle L3 L4 xyaxes) 30.0)
;;	(< (angle L3 L4 ZAXES) 39.5)
;;	(> (angle L4 L5 xyaxes) 30.0)
;;	(< (angle L4 L5 ZAXES) 30.5)

) )
)

