# 05 · Two pointers & sliding windows

Replace repeated scans with carefully maintained boundaries.

## Planned coverage

- [ ] Use opposite-end pointers on sorted data and for palindrome checks.
- [ ] Use same-direction pointers for partitioning and compaction.
- [ ] Maintain a fixed-size window with an incremental update.
- [ ] Maintain a variable-size window with counts or a set.
- [ ] Identify when a window rule is monotonic and when negative values or other constraints break it.

## Checkpoint

State the window invariant, explain when each boundary moves, and show why the total pointer movement is linear.

## Java to watch

Keep index and count updates in a clear order. Test windows of size one, the full input, and no valid window.

Keep concept experiments in `learning/` and each problem in its own `problems/` folder when added. Check an item after I can explain and apply it, with code or notes to support it.

[Learning map](../../README.md#learning-map) · [Weekend log](../../progress/README.md) · [Workflow](../../docs/WORKFLOW.md)
