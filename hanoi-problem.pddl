; The Tower of Hanoi is a mathematical game or puzzle. It consists of three rods and a number of disks of different sizes,
; which can slide onto any rod. The puzzle starts with the disks in a neat stack in ascending order of size on one rod, the smallest at the top, thus making a conical shape.
;
; The objective of the puzzle is to move the entire stack to another rod, obeying the following simple rules:
;
; * Only one disk can be moved at a time.
; * Each move consists of taking the upper disk from one of the stacks and placing it on top of another stack or on an empty rod.
; * No larger disk may be placed on top of a smaller disk.

(define
    (problem hanoi)
    (:domain hanoi)
    (:objects peg1 peg2 peg3 disk1 disk2 disk3)
    
    (:init
        (smaller peg1 disk1) (smaller peg1 disk2) (smaller peg1 disk3)
        (smaller peg2 disk1) (smaller peg2 disk2) (smaller peg2 disk3)
        (smaller peg3 disk1) (smaller peg3 disk2) (smaller peg3 disk3)
        (smaller disk2 disk1) (smaller disk3 disk1) (smaller disk3 disk2)

        (clear peg2) (clear peg3) (clear disk1)

        (on disk3 peg1) (on disk2 disk3) (on disk1 disk2)
    )


    (:goal
        (and (on disk3 peg3) (on disk2 disk3) (on disk1 disk2))
    )
)