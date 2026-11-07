# Create a problem folder

From the repository root in PowerShell:

```powershell
.\scripts\new-problem.ps1 -Topic 02 -Name lc-0217-contains-duplicate
```

`-Topic` is the two-digit folder number. `-Name` is a lowercase, hyphen-separated folder name. Use a platform and problem ID when available: `lc-0217-contains-duplicate`, `hr-balanced-brackets`, or `tuf-array-rotation`.

Optional title:

```powershell
.\scripts\new-problem.ps1 -Topic 02 -Name lc-0217-contains-duplicate -Title "Contains Duplicate"
```

The helper copies the two [templates](../templates/) into `topics/<topic>/problems/<name>/`. It refuses an unknown topic, an invalid name, or an existing destination. It does not add a log entry or change progress.

The generated Java file is deliberately unfinished. Replace its exception with the implementation and explicit checks, then run that file with `java path/to/Main.java`.

If script execution is restricted, use the [manual copy steps](../docs/WORKFLOW.md#manual-copy) instead.
