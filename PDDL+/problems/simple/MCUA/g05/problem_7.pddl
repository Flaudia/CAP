(define (problem example)
(:domain paco3d)


(:objects L1 L2 L3 L4 L5 L6 L7 L8 - link
xyaxes ZAXES - axis
)

(:init

(= (speed-i) 10)
(= (speed-d) 10)
(= (speed-g L2) 0.5)
(= (speed-g L3) 0.5)
(= (speed-g L4) 0.5)
(= (speed-g L5) 0.5)
(= (speed-g L6) 0.5)
(= (speed-g L7) 0.5)
(= (speed-g L8) 0.5)

(= (angle L2 xyaxes) 60.0)
(= (angle L2 ZAXES) 10.0)
(= (angle L3 xyaxes) 20.0)
(= (angle L3 ZAXES) 145.0)
(= (angle L4 xyaxes) 0.0)
(= (angle L4 ZAXES) 20.0)
(= (angle L5 xyaxes) 260.0)
(= (angle L5 ZAXES) 40.0)
(= (angle L6 xyaxes) 285.0)
(= (angle L6 ZAXES) 40.0)
(= (angle L7 xyaxes) 125.0)
(= (angle L7 ZAXES) 100.0)
(= (angle L8 xyaxes) 270.0)
(= (angle L8 ZAXES) 50.0)


(freeToMove L1)
(freeToMove L2)
(freeToMove L3)
(freeToMove L4)
(freeToMove L5)
(freeToMove L6)
(freeToMove L7)
(freeToMove L8)
(connected L1 L2)
(connected L2 L3)
(connected L3 L4)
(connected L4 L5)
(connected L5 L6)
(connected L6 L7)
(connected L7 L8)


(affects L2 L3)
(affects L2 L4)
(affects L2 L5)
(affects L2 L6)
(affects L2 L7)
(affects L2 L8)
(affects L3 L4)
(affects L3 L5)
(affects L3 L6)
(affects L3 L7)
(affects L3 L8)
(affects L4 L5)
(affects L4 L6)
(affects L4 L7)
(affects L4 L8)
(affects L5 L6)
(affects L5 L7)
(affects L5 L8)
(affects L6 L7)
(affects L6 L8)
(affects L7 L8)


)

(:goal (and
	(> (angle L2 xyaxes) 30.0)
	(> (angle L2 ZAXES) 50.0)
	(> (angle L3 xyaxes) 30.0)
	(> (angle L3 ZAXES) 50.0)
	(> (angle L5 xyaxes) 30.0)
	(> (angle L5 ZAXES) 50.0)
	(> (angle L8 xyaxes) 300.0)
	(> (angle L8 ZAXES) 250.0)


) )
)

