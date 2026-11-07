[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[0-9]{2}$')]
    [string]$Topic,

    [Parameter(Mandatory = $true)]
    [ValidateLength(1, 80)]
    [ValidatePattern('(?-i)^[a-z0-9]+(-[a-z0-9]+)*$')]
    [string]$Name,

    [ValidateScript({ $_ -notmatch '[\r\n]' })]
    [string]$Title
)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$topicMatches = @(Get-ChildItem -LiteralPath (Join-Path $repoRoot 'topics') -Directory |
    Where-Object { $_.Name -like "$Topic-*" })

if ($topicMatches.Count -ne 1) {
    throw "Topic $Topic does not identify one topic folder. Check topics/."
}
if ($Name -match '^(con|prn|aux|nul|com[0-9]|lpt[0-9])$') {
    throw 'Choose a folder name that is not a reserved Windows device name.'
}

$problemRoot = Join-Path $topicMatches[0].FullName 'problems'
$destination = Join-Path $problemRoot $Name
if (Test-Path -LiteralPath $destination) {
    throw "Already exists: $destination. Existing work has not been changed."
}

$templateRoot = Join-Path $repoRoot 'templates'
$note = [System.IO.File]::ReadAllText((Join-Path $templateRoot 'README.md'))
$runner = [System.IO.File]::ReadAllText((Join-Path $templateRoot 'Main.java'))
if ([string]::IsNullOrWhiteSpace($Title)) {
    $Title = $Name
}
$note = [regex]::Replace($note, '\A# Problem note template\r?\n\r?\n[^\r\n]+\r?\n',
    [System.Text.RegularExpressions.MatchEvaluator]{ param($match) "# $Title`n" })

New-Item -ItemType Directory -Path $problemRoot -Force | Out-Null
# No -Force: refuse a destination that appears between the existence check and creation.
New-Item -ItemType Directory -Path $destination | Out-Null
$utf8 = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText((Join-Path $destination 'README.md'), $note, $utf8)
[System.IO.File]::WriteAllText((Join-Path $destination 'Main.java'), $runner, $utf8)

Write-Output "Created planned problem: $destination"
Write-Output 'Add the source URL, implementation, and checks before updating progress.'
