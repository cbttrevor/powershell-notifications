$Context = New-BTContextMenuItem -Content 'AWS Console' -ActivationType Protocol -Arguments https://console.aws.amazon.com
$Context2 = New-BTContextMenuItem -Content 'Google Cloud Console' -ActivationType Protocol -Arguments https://console.cloud.google.com
$Context3 = New-BTContextMenuItem -Content 'Azure Portal' -ActivationType Protocol -Arguments https://portal.azure.com

$Action = New-BTAction -ContextMenuItems $Context, $Context2, $Context3

$Visual = New-BTVisual -BindingGeneric (New-BTBinding)

# Create the Content object
$Content = New-BTContent -Actions $Action -Visual $Visual 

# Send the notification
Submit-BTNotification -Content $Content