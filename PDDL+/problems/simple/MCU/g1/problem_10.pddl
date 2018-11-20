(define (problem example)
(:domain paco3d)


(:objects L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 - link
xyaxes ZAXES - axis
)

(:init

(= (speed-i) 10)
(= (speed-d) 10)
(= (speed-g) 1)
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
(= (angle L9 xyaxes) 70.0)
(= (angle L9 ZAXES) 150.0)
(= (angle L10 xyaxes) 23.0)
(= (angle L10 ZAXES) 10.0)
(= (angle L11 xyaxes) 20.0)
(= (angle L11 ZAXES) 5.0)


(freeToMove L1)
(freeToMove L2)
(freeToMove L3)
(freeToMove L4)
(freeToMove L5)
(freeToMove L6)
(freeToMove L7)
(freeToMove L8)
(freeToMove L9)
(freeToMove L10)
(freeToMove L11)
(connected L1 L2)
(connected L2 L3)
(connected L3 L4)
(connected L4 L5)
(connected L5 L6)
(connected L6 L7)
(connected L7 L8)
(connected L8 L9)
(connected L9 L10)
(connected L10 L11)


(affects L2 L3)
(affects L2 L4)
(affects L2 L5)
(affects L2 L6)
(affects L2 L7)
(affects L2 L8)
(affects L2 L9)
(affects L2 L10)
(affects L2 L11)

(affects L3 L4)
(affects L3 L5)
(affects L3 L6)
(affects L3 L7)
(affects L3 L8)
(affects L3 L9)
(affects L3 L10)
(affects L3 L11)

(affects L4 L5)
(affects L4 L6)
(affects L4 L7)
(affects L4 L8)
(affects L4 L9)
(affects L4 L10)
(affects L4 L11)

(affects L5 L6)
(affects L5 L7)
(affects L5 L8)
(affects L5 L9)
(affects L5 L10)
(affects L5 L11)


(affects L6 L7)
(affects L6 L8)
(affects L6 L9)
(affects L6 L10)
(affects L6 L11)

(affects L7 L8)
(affects L7 L9)
(affects L7 L10)
(affects L7 L11)

(affects L8 L9)
(affects L8 L10)
(affects L8 L11)

(affects L9 L10)
(affects L9 L11)

(affects L10 L11)

)

(:goal (and
	(> (angle L2 xyaxes) 30.0)
	(> (angle L2 ZAXES) 50.0)
	(> (angle L3 xyaxes) 30.0)
	(> (angle L3 ZAXES) 50.0)
	(> (angle L5 xyaxes) 30.0)
	(> (angle L5 ZAXES) 50.0)
	(> (angle L8 xyaxes) 40.0)
	(> (angle L8 ZAXES) 25.0)
	(> (angle L10 xyaxes) 3.0)
	(> (angle L10 ZAXES) 2.0)
	(> (angle L11 xyaxes) 30.0)
	(> (angle L11 ZAXES) 22.0)


) )
)

