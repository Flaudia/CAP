(define (problem example)
(:domain paco3d)


(:objects L1 L2 L3 L4 L5 L6 L7 - link
xyaxes ZAXES - axis
)

(:init

(= (speed-i) 10)
(= (speed-d) 10)
(= (speed-g) 9.8)
(= (angle L2 xyaxes) 60.5)
(= (angle L2 ZAXES) 100.1)
(= (angle L3 xyaxes) 206.7)
(= (angle L3 ZAXES) 145.0)
(= (angle L4 xyaxes) 0.4)
(= (angle L4 ZAXES) 0.9)
(= (angle L5 xyaxes) 26.5)
(= (angle L5 ZAXES) 40.0)
(= (angle L6 xyaxes) 110.0)
(= (angle L6 ZAXES) 30.3)
(= (angle L7 xyaxes) 125.0)
(= (angle L7 ZAXES) 100.0)



(freeToMove L1)
(freeToMove L2)
(freeToMove L3)
(freeToMove L4)
(freeToMove L5)
(freeToMove L6)
(freeToMove L7)
(connected L1 L2)
(connected L2 L3)
(connected L3 L4)
(connected L4 L5)
(connected L5 L6)
(connected L6 L7)

(affects L2 L3)
(affects L2 L4)
(affects L2 L5)
(affects L2 L6)
(affects L2 L7)
(affects L3 L4)
(affects L3 L5)
(affects L3 L6)
(affects L3 L7)
(affects L4 L5)
(affects L4 L6)
(affects L4 L7)
(affects L5 L6)
(affects L5 L7)
(affects L6 L7)

)

(:goal (and
	(> (angle L2 xyaxes) 71.1)
	(> (angle L2 ZAXES) 255.5)
	(> (angle L4 xyaxes) 30.2)
	(> (angle L4 ZAXES) 65.0)
	(> (angle L6 xyaxes) 33.4)
	(> (angle L6 ZAXES) 55.9)
	(> (angle L7 xyaxes) 315.2)
	(> (angle L7 ZAXES) 257.7)


) )
)

