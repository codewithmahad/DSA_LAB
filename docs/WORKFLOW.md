# Practice workflow

The [learning map](../README.md#learning-map) decides where work belongs. The [weekend log](../progress/README.md) decides where I pick up next.

## First session

1. Check `java -version` and `javac -version`. My current local setup uses JDK 25. In IntelliJ IDEA, select that JDK for the project.
2. Open [01 · Foundations](../topics/01-foundations/). Trace a linear loop, nested loops, and a halving loop; explain their time and extra space costs.
3. Write a small array traversal experiment under `topics/01-foundations/learning/`. Try empty and single-element arrays as well as a normal input.
4. Start an array problem such as [Contains Duplicate](https://leetcode.com/problems/contains-duplicate/). Attempt it before opening an editorial, and record any help used.
5. Add the actual code and takeaway to the weekend log. Put one thing that needs another attempt in the revision queue, if needed.

This is a starting plan, not a completed session or a fixed weekly quota.

## Keep one home for each piece of work

```text
topics/
└── 02-arrays-and-strings/
    ├── README.md                         topic checklist
    ├── learning/                         concept experiments, when added
    └── problems/
        └── lc-0217-contains-duplicate/    example destination, not created yet
            ├── Main.java                 approach and local checks
            └── README.md                 source, reasoning, cost, revision
```

Only the numbered topic folders and their guides exist initially. Create `learning/` and `problems/` when there is work to put in them.

Group a problem by the main idea I’m practising. If it fits multiple topics or sheets, keep one copy and link to it from the other notes. Source-specific IDs prevent similarly named problems from becoming ambiguous.

Use a named Java file for a concept experiment, such as `ArrayTraversal.java`. A problem gets a separate folder and a `Main.java` runner. Put any small helper or node classes in that file so it stays easy to run independently.

## Create a problem

From the repo root in PowerShell:

```powershell
.\scripts\new-problem.ps1 -Topic 02 -Name lc-0217-contains-duplicate -Title "Contains Duplicate"
```

The [helper](../scripts/new-problem.ps1) creates a planned problem. Add the original source URL and keep the statement at its source. The note should capture my reasoning, rather than reproduce the full statement or an editorial.

### Manual copy

If PowerShell blocks scripts, copy the templates directly:

```powershell
New-Item -ItemType Directory topics/02-arrays-and-strings/problems/lc-0217-contains-duplicate
Copy-Item templates/Main.java topics/02-arrays-and-strings/problems/lc-0217-contains-duplicate/Main.java
Copy-Item templates/README.md topics/02-arrays-and-strings/problems/lc-0217-contains-duplicate/README.md
```

Replace the copied note’s template introduction and heading. Both routes produce an unfinished runner; its exception is a reminder that no implementation or checks have been written.

## Run and check

Each file runs independently with the JDK’s [source-file launcher](https://docs.oracle.com/en/java/javase/25/docs/specs/man/java.html#using-source-file-mode-to-launch-source-code-programs):

```powershell
java topics/02-arrays-and-strings/problems/lc-0217-contains-duplicate/Main.java
```

These commands also work in IntelliJ’s terminal. If using IDE run configurations, configure one problem folder as a source root at a time. Keep problems separate when compiling: unrelated folders reuse `Main`, so compiling every Java file together would cause duplicate class names.

Use explicit checks that throw `AssertionError` on a mismatch. Java’s `assert` statements need `-ea`, so they should not silently carry the only checks. Record what ran and the observed result in the problem note. A runner starting successfully is not evidence that the solution is correct.

Before marking a problem **Checked**, I should have:

- A working approach I can explain, including why it is correct.
- Time and extra space analysis, with the input size defined.
- Recorded checks for a normal case, a boundary, and a case likely to break the approach, where the problem’s constraints allow them.
- An honest note about hints, editorials, or other help used.

Adapt the algorithm method to the platform’s required signature when submitting. Record acceptance only after a real submission; a local check and a platform result are separate evidence.

## Close the session

Update the relevant topic checklist only for material I can explain and apply. Link code and notes in the weekend log, choose the next task, and add unresolved work to the revision queue. Update the root README’s Recorded/Next row when the focus changes, and remove the log’s empty-state sentence after the first session.

Check the diff before committing and stage only that session’s files. A useful commit message describes the work: `practice: compare array duplicate checks` or `revision: fix binary search boundary`.

## Revisit before reading

In a later session, try from the statement or a blank file. Explain the approach and complexity before comparing with the old code. Record the actual outcome, including what still needed help. A previously checked problem can return to the queue.

When the core topics are familiar, use some weekends for mixed problems and timed explanations. Keep backend projects, SQL, and Java study moving alongside DSA; this repo covers the problem-solving part of that preparation.
