foreach ($item in 1..1) {
    $Progress = New-BTProgressBar -Status 'Deleting files' -Title 'Cleanup Process' -Value ($item/5) -ValueDisplay 5
    New-BurntToastNotification -ProgressBar $Progress -UniqueIdentifier cleanup -Silent -CustomTimestamp (Get-Date).AddMinutes(-8)
    Start-Sleep -Milliseconds 1000
}

