$Context = New-BTContextMenuItem -Content 'AWS Console' -ActivationType Protocol -Arguments https://console.aws.amazon.com

$Action = New-BTAction -ContextMenuItems $Context

$Binding = New-BTBinding

$Visual = New-BTVisual -BindingGeneric $Binding

$Content = New-BTContent -Actions $Action -Visual $Visual 


Submit-BTNotification -Content $Content -DismissedAction { chrome }


#Get-Command -Module BurntToast