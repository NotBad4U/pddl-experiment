; Virtual Machine Paking Problem
; The objetive of the VMPP is to determine the minimum number of nodes
; that an host the VMs, given their current proessing unit and memory requirements.
(define (domain vmpp)

(:requirements :strips :fluents :typing)

(:types
    VM, HV
)

(:predicates
    (on ?v - VM ?h - HV)
)

(:functions
    (size ?v - VM) - number
    (current-space ?h - HV) - number
    (free-capacity ?h - HV) - number
)

(:action migrate
    :parameters (?v - VM  ?from ?to - HV)
    :precondition
        (and
            (>= (- (free-capacity ?to) (size ?v)) 0)
            (on ?v ?from)
        )
    :effect
        (and
            (increase (free-capacity ?from) (size ?v))
            (decrease (free-capacity ?to) (size ?v))
            (on ?v ?to)
            (not (on ?v ?from))
        )
)
)