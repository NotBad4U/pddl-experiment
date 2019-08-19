(define (domain hanoi)

(:requirements :strips)

(:predicates
    (on ?x ?y)
    (smaller ?x ?y)
    (clear ?x)
)

(:action move-on
    :parameters (?disk ?from ?to)
    :precondition
        (and
            (smaller ?to ?disk)
            (on ?disk ?from)
            (clear ?disk)
            (clear ?to)
        )
    :effect
        (and
            (clear ?from)
            (on ?disk ?to)
            (not (on ?disk ?from))
            (not (clear ?to)))
        )
)