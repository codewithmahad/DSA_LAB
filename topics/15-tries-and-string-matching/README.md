# 15 · Tries & string matching

Add this depth once the core structures and interview patterns are comfortable.

## Planned coverage

- [ ] Build a trie with insert, exact lookup, and prefix lookup.
- [ ] Compare fixed child arrays with maps for the expected alphabet.
- [ ] Trace prefix-function construction and KMP matching.
- [ ] Understand rolling hashes, collisions, and the need to verify matches.
- [ ] Compare preprocessing cost, lookup cost, and memory with simpler approaches.

## Checkpoint

Explain why a trie is useful for shared prefixes, then compare it with a set for exact membership. Trace KMP on a repeated-prefix string.

## Java to watch

State the alphabet assumption rather than hard-coding 26 children by habit. Handle empty patterns according to the problem’s contract.

Keep concept experiments in `learning/` and each problem in its own `problems/` folder when added. Check an item after I can explain and apply it, with code or notes to support it.

[Learning map](../../README.md#learning-map) · [Weekend log](../../progress/README.md) · [Workflow](../../docs/WORKFLOW.md)
