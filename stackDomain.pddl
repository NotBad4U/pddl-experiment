;Header and description

(define (domain stack)

;remove requirements that are not needed
(:requirements :strips :typing :conditional-effects :negative-preconditions)

(:types box)

(:predicates
    (head ?x - box)
    (tail ?x - box)
    (unstacked ?x - box)
    (over ?x - box ?y - box) ; x over y
)

(:action push
    :parameters (?x - box ?y - box)
    :precondition (and
        (not (over ?x ?y))
        (tail ?y)
        (not (tail ?x))
        (unstacked ?x)
    )
    :effect (and
        (not (unstacked ?x))
        (over ?x ?y)
        (not (tail ?y))
        (tail ?x)
    )
)

(:action pop
    :parameters (?x - box ?y - box)
    :precondition
    (and
        (over ?x ?y)
        (tail ?x)
        (not (unstacked ?x))
    )
    :effect (and
        (unstacked ?x)
        (not (tail ?x))
        (not (over ?x ?y))
        (tail ?y)
    )
)
)