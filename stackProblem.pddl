(define (problem stack) (:domain stack)
(:objects
    a - box
    b - box
    c - box
)

(:init
    (over b c)
    (over c a)
    (tail b)
    (not (unstacked a))
    (not (unstacked b))
    (not (unstacked c))
    (head a)
)

(:goal
    (and
        ;(over c b)
        (over b a)
        (tail b)
        ;(head a)
        ;(not (unstacked a))
        ;(not (unstacked b))
        ;(not (unstacked c))
    )
)
)
