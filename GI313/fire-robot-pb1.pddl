(define (problem pb1)
	(:domain fire-robot)
	(:objects
		r - robot
		A B C D E F - location
		c1 c2 c3 - cartridge
		f1 f2 f3 - fire
	)
	(:init
		(adjacent A B)
		(adjacent A E)
		(adjacent B C)
		(adjacent B A)
		(adjacent C B)
		(adjacent C D)
		(adjacent C F)
		(adjacent D C)
		(adjacent D E)
		(adjacent E A)
		(adjacent E F)
		(adjacent F C)
		(at r A)
		(in f1 F)
		(in f2 B)
		(in f3 D)
	)
	(:goal
		(and (put-out f1) (put-out f2) (put-out f3))
	)
)
