# Let's mock up an Active Directory clean-up task, to learn how to use progress bars.

# Mock up some fake computer names. In reality, you would use something like Get-ADComputer to search for stale computer objects.
$ComputerNames = @(
    'DESKTOP-HJKL236'
    'DESKTOP-JKHLWEG'
    'DESKTOP-HJEKLW3'
    'DESKTOP-JHL8897'
    'DESKTOP-JLKW241'
    'DESKTOP-NMYI052'
)

foreach ($item in $ComputerNames) {    
    $Percent = ($ComputerNames.IndexOf($item)+1)/$ComputerNames.Count

    # The New-BTProgressBar command configures the parameters for the progress bar
    $Progress = New-BTProgressBar -Status ('Deleting stale computer account {0}' -f $item) -Title 'Active Directory Cleanup' -Value $Percent -ValueDisplay $ComputerNames.Count

    # IMPORTANT: Ensure that you use the -UniqueIdentifier parameter, otherwise you will get multiple toasts
    New-BurntToastNotification -ProgressBar $Progress -UniqueIdentifier cleanup -Silent

    Start-Sleep -Milliseconds 1500
}

