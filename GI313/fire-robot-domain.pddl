(define (domain fire-robot)
	(:requirements :strips :typing)
	(:types
		location
		fire
		robot
		cartridge
	)
	(:predicates
		(adjacent ?l1 ?l2 - location)
		(at ?r - robot ?l - location)
		(explored ?l - location)
		(in ?f - fire ?l - location)
		(seen ?f - fire)
		(put-out ?f - fire)
		(empty ?r - robot)
	)

(:action move
	:parameters (?r - robot ?from ?to - location)
	:precondition (and (adjacent ?from ?to) (at ?r ?from))
	:effect (and (at ?r ?to) (not(at ?r ?from)))
)

(:action explore
	:parameters (?r - robot ?l - location)
	:precondition (at ?r ?l)
	:effect (forall (?f - fire) (when (in ?f ?l) (seen ?f)))
)

(:action put-out
	:parameters (?f - fire ?r - robot ?l - location)
	:precondition (and (at ?r ?l) (in ?f ?l) (seen ?f) (not (empty ?r)))
	:effect (put-out ?f)
) 

)
