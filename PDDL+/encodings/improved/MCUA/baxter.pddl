(define (domain paco3d)
(:requirements :typing :adl :fluents :time )
;;;; MI SONO INCASINATO CON IL DISCORSO DEL BLOCCO A 360 GRADI O MENO, E L'USO DEI 2 ANGOLI.


(:types link axis)

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
(fakeg ?l2 - link)
(resetg ?l2 - link)
(vertical ?x - axis)
)



(:functions 
(angle ?l2 - link ?x - axis)
(speed-i)
(speed-d)
(speed-g ?l2 - link)
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
                    (decrease (angle ?l1 ?x) (* #t (speed-g ?l1)))
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
                    (increase (angle ?l1 ?x) (* #t (speed-g ?l1)))
           )
)

(:process uniform-speed-increase-gravity
:parameters (?l1 - link)
:precondition (and 
				(increasing_angle-gravity ?l1)
				)
:effect (and
                (increase (speed-g ?l1) (* #t 0.1))
					
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
                    (increase (angle ?l3 ?x) (* #t (speed-g ?l2)))
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
                    (decrease (angle ?l3 ?x) (* #t (speed-g ?l2)))
            )
)

(:event stop-gravity-decrease
:parameters (?l3 - link ?x -axis)
:precondition (and (= (angle ?l3 ?x) 0) (vertical ?x) (> (speed-g ?l3) 0) (fakeg ?l3))
:effect  (and (not (fakeg ?l3)) (assign (speed-g ?l3) 0) (resetg ?l3))
)

(:event stop-gravity-increase
:parameters (?l3 - link ?x -axis)
:precondition (and (= (angle ?l3 ?x) 360) (vertical ?x) (> (speed-g ?l3) 0) (fakeg ?l3))
:effect  (and (not (fakeg ?l3)) (assign (speed-g ?l3) 0) (resetg ?l3))
)

(:event stop-gravity-because-mov-1
:parameters (?l3 - link)
:precondition (and (not (freeToMove ?l3)) (> (speed-g ?l3) 0) (fakeg ?l3))
:effect   (and (not (fakeg ?l3)) (assign (speed-g ?l3) 0) (resetg ?l3))
)

(:event stop-gravity-because-mov-2
:parameters (?l3 - link)
:precondition (and (not (freeToMove ?l3)) (> (speed-g ?l3) 0) (fakeg ?l3))
:effect  (and (not (fakeg ?l3)) (assign (speed-g ?l3) 0) (resetg ?l3))
)

(:event resetting-grav
:parameters (?l3 - link)
:precondition (and (resetg ?l3) (not (fakeg ?l3)))
:effect  (and (fakeg ?l3) (not (resetg ?l3)) )
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
