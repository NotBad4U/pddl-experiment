(define
    (problem vmpp)
    (:domain vmpp)

(:objects
    vm1 vm2 vm3 vm4 vm5 - VM,
    hv1 hv2 hv3 - HV
)

(:init

    (= (size vm1) 40)
    (= (size vm2) 40)
    (= (size vm3) 10)
    (= (size vm4) 40)
    (= (size vm5) 10)

    (= (free-capacity hv1) 50)
    (= (free-capacity hv2) 10)
    (= (free-capacity hv3) 100)

    (on vm2 hv1)
    (on vm3 hv1)
    (on vm1 hv2)
    (on vm4 hv2)
    (on vm5 hv2)
)

(:goal (and
        (>= (free-capacity hv1) 50)
        (>= (free-capacity hv2) 50)
        (>= (free-capacity hv3) 50)
    )
)
)
