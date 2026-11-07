# 08 · Recursion & backtracking

Track the call state and know exactly what must be undone before another branch.

## Planned coverage

- [ ] Trace recursive calls, base cases, progress, and stack space.
- [ ] Compare recursive and iterative versions of a small traversal.
- [ ] Generate subsets, combinations, and permutations.
- [ ] Use choose/explore/unchoose with shared mutable state.
- [ ] Handle duplicates and prune branches only when the pruning rule is valid.

## Checkpoint

Draw a small call tree, explain the state of each call, and generate a result without accidentally sharing mutable output lists.

## Java to watch

Copy a result when storing a snapshot. Account for recursion depth and restore shared state on every branch.

Keep concept experiments in `learning/` and each problem in its own `problems/` folder when added. Check an item after I can explain and apply it, with code or notes to support it.

[Learning map](../../README.md#learning-map) · [Weekend log](../../progress/README.md) · [Workflow](../../docs/WORKFLOW.md)
