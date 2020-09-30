# There are several different parameter sets on New-BurntToastNotification
Get-Help -Name New-BurntToastNotification

New-BurntToastNotification -SnoozeAndDismiss -Text 'Your meeting starts in 10 minutes!'

# Add a custom button to the notification
$AWSButton = New-BTButton -ActivationType Protocol -Content 'Open Console' -Arguments https://console.aws.amazon.com 
New-BurntToastNotification -Text 'Virtual Machine Outage', 'VM named XYZ123 has been shutdown.' -Button $AWSButton
