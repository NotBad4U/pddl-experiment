# pddl-experiment

## Run it


### Using metric-ff

`ff -o hanoi-domain.pddl -f hanoi-problem.pddl`

should output:

```
...
ff: found legal plan as follows

step    0: MOVE-ON DISK1 DISK2 PEG3
        1: MOVE-ON DISK2 DISK3 PEG2
        2: MOVE-ON DISK1 PEG3 DISK2
        3: MOVE-ON DISK3 PEG1 PEG3
        4: MOVE-ON DISK1 DISK2 PEG1
        5: MOVE-ON DISK2 PEG2 DISK3
        6: MOVE-ON DISK1 PEG1 DISK2


time spent:    0.00 seconds instantiating 72 easy, 0 hard action templates
               0.00 seconds reachability analysis, yielding 18 facts and 50 actions
               0.00 seconds creating final representation with 17 relevant facts, 0 relevant fluents
               0.00 seconds computing LNF
               0.00 seconds building connectivity graph
               0.00 seconds searching, evaluating 14 states, to a max depth of 4
               0.00 seconds total time
...
```

## Plan solver

* [metric-ff](https://fai.cs.uni-saarland.de/hoffmann/metric-ff.html)
* [fast-downward](http://www.fast-downward.org/)

## Dev tools

* [PDDL vscode extension](https://marketplace.visualstudio.com/items?itemName=jan-dolejsi.pddl)