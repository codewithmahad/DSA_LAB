# 11 · Greedy & intervals

Justify a local choice and actively look for the input that would break it.

## Planned coverage

- [ ] Sort and merge intervals, with an explicit endpoint convention.
- [ ] Detect overlaps and reason about meeting-room style scheduling.
- [ ] Compare start-time and finish-time choices.
- [ ] Use exchange arguments or a maintained invariant to justify a greedy approach.
- [ ] Find counterexamples when a plausible greedy choice fails and consider DP instead.

## Checkpoint

Explain why a scheduling choice leaves room for an optimal remainder, and test touching, nested, and identical intervals.

## Java to watch

Write comparator tie-breaks clearly and decide whether endpoints are inclusive. Do not mutate shared interval arrays without noticing.

Keep concept experiments in `learning/` and each problem in its own `problems/` folder when added. Check an item after I can explain and apply it, with code or notes to support it.

[Learning map](../../README.md#learning-map) · [Weekend log](../../progress/README.md) · [Workflow](../../docs/WORKFLOW.md)
