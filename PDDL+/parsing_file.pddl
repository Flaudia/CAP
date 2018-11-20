(define (domain paco3d)
(:requirements :typing :adl :fluents :time )
;;;; MI SONO INCASINATO CON IL DISCORSO DEL BLOCCO A 360 GRADI O MENO, E L'USO DEI 2 ANGOLI.


(:types link axis)

;;(:constants ZAXES - axis)

(:predicates 
(in-use) ;;serve per dire se le gripper sono in uso o meno
(connected ?l1 - link ?l2 - link)
(affects ?l1 - link ?l2 - link)
(freeToMove ?l2 - link)
(increasing_angle-baxter ?l2 - link ?x - axis)
(decreasing_angle-baxter ?l2 - link ?x - axis)
(increasing_angle-gravity ?l2 - link)
(decreasing_angle-gravity ?l2 - link)
(fake ?l2 - link)
(reset ?l2 - link)
(vertical ?x - axis)
)



(:functions 
(angle ?l2 - link ?x - axis)
(speed-i)
(speed-d)
(speed-g)
)

;;; I MOVIMENTI SONO MODELLIZZATI USANDO AZIONE + PROCESSO + AZIONE. FUNZIONA IN INCREASE ED IN DECREASE.

(:action start_movement_increase
:parameters (?l1 - link ?l2 - link ?x - axis)
:precondition (and
		(connected ?l1 ?l2)
		(not (in-use))
		)
:effect (and
		(in-use)
		(not (freeToMove ?l2))
		(not (freeToMove ?l1))
		(increasing_angle-baxter ?l2 ?x)
))

(:action stop_movement_increase
:parameters (?l1 - link ?l2 - link ?x - axis)
:precondition (and
		(increasing_angle-baxter ?l2 ?x)
		(connected ?l1 ?l2)
		)
:effect (and
		(not (in-use))
		(freeToMove ?l2)
		(freeToMove ?l1)
		(not (increasing_angle-baxter ?l2 ?x))
))


(:process move_angle_increase
:parameters (?l2 - link ?x - axis)
:precondition (and 
					(increasing_angle-baxter ?l2 ?x) 
				)
:effect (and
                    (increase (angle ?l2 ?x) (* #t (speed-i)))
            )
)

(:action start_movement_decrease
:parameters (?l1 - link ?l2 - link ?x - axis)
:precondition (and
		(connected ?l1 ?l2)
		(not (in-use))
		)
:effect (and
		(in-use)
		(not (freeToMove ?l2))
		(not (freeToMove ?l1))
		(decreasing_angle-baxter ?l2 ?x)
))

(:action stop_movement_decrease
:parameters (?l1 - link ?l2 - link ?x - axis)
:precondition (and
		(decreasing_angle-baxter ?l2 ?x)
		(connected ?l1 ?l2)
		)
:effect (and
		(not (in-use))
		(freeToMove ?l2)
		(freeToMove ?l1)
		(not (decreasing_angle-baxter ?l2 ?x))
))


(:process move_angle_decrease
:parameters (?l2 - link ?x - axis)
:precondition (and 
					(decreasing_angle-baxter ?l2 ?x) 
				)
:effect (and
                    (decrease (angle ?l2 ?x) (* #t (speed-d)))
            )
)

;;; I MOVIMENTI SONO PROPAGATI A TUTTI GLI ANGOLI AFFECTED. 

(:process propagate_move_angle_decrease
:parameters (?l2 - link ?l3 - link ?x - axis)
:precondition (and 
					(decreasing_angle-baxter ?l2 ?x)
					(affects ?l2 ?l3)
				)
:effect (and
                    (decrease (angle ?l3 ?x) (* #t (speed-d)))
            )
)

(:process propagate_move_angle_increase
:parameters (?l2 - link ?l3 - link ?x - axis)
:precondition (and 
					(increasing_angle-baxter ?l2 ?x)
					(affects ?l2 ?l3)
				)
:effect (and
                    (increase (angle ?l3 ?x) (* #t (speed-i)))
            )
)


(:process gravity-decrease
:parameters (?l1 - link ?x - axis)
:precondition (and 
;;				(connected ?l1 ?l2)
;;				(notBroken ?l1 ?l2)
				(freeToMove ?l1)
				(vertical ?x)
				(> (angle ?l1 ?x) 0)
				(< (angle ?l1 ?x) 180)
				)
:effect (and
                    (decrease (angle ?l1 ?x) (* #t (speed-g)))
           )
)

(:process gravity-increase
:parameters (?l1 - link ?x - axis)
:precondition (and 
;;				(connected ?l1 ?l2)
;;				(notBroken ?l1 ?l2)
				(freeToMove ?l1)
				(vertical ?x)
				(> (angle ?l1 ?x) 180)
				(< (angle ?l1 ?x) 360)
				)
:effect (and
                    (increase (angle ?l1 ?x) (* #t (speed-g)))
           )
)


(:process propagate_gravity_increase
:parameters (?l2 - link ?l3 - link ?x - axis)
:precondition (and 
					(freeToMove ?l2)
				    (> (angle ?l2 ?x) 180)
				    (< (angle ?l2 ?x) 360)
					(vertical ?x)
					(affects ?l2 ?l3)
				)
:effect (and
                    (increase (angle ?l3 ?x) (* #t (speed-g)))
            )
)

(:process propagate_gravity_decrease
:parameters (?l2 - link ?l3 - link ?x - axis)
:precondition (and 
					(freeToMove ?l2)
					(> (angle ?l2 ?x) 0)
					(< (angle ?l2 ?x) 180)
					(affects ?l2 ?l3)
					(vertical ?x)
				)
:effect (and
                    (decrease (angle ?l3 ?x) (* #t (speed-g)))
            )
)


;;;; I SEGUENTI EVENTI AZZERANO O METTONO A 360 -- A SECONDA DELLA DIREZIONE -- GLI ANGOLI

(:event back-to-zero
:parameters (?l3 - link ?x - axis)
:precondition (and (> (angle ?l3 ?x) 359) (fake ?l3) (not (reset ?l3)))
:effect  (and (not (fake ?l3)) (reset ?l3) (assign (angle ?l3 ?x) 0))
)

(:event resetting
:parameters (?l3 - link)
:precondition (and (reset ?l3) (not (fake ?l3)))
:effect  (and (fake ?l3) (not (reset ?l3)) )
)

(:event back-to-360
:parameters (?l3 - link ?x - axis)
:precondition (and  (< (angle ?l3 ?x) 0) (fake ?l3) (not (reset ?l3)))
:effect  (and (not (fake ?l3)) (reset ?l3) (assign (angle ?l3 ?x) 359))
)


)
(define (problem example)
(:domain paco3d)


(:objects L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 - link
xyaxes ZAXES - axis
)

(:init

(vertical ZAXES)

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

(fake L1)
(fake L2)
(fake L3)
(fake L4)
(fake L5)
(fake L6)
(fake L7)
(fake L8)
(fake L9)
(fake L10)
(fake L11)

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

