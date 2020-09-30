$Button = New-BTButton -ActivationType Protocol -Content 'Open Console' -Arguments https://console.aws.amazon.com 

New-BurntToastNotification -Text 'AWS Console' -Button $Button 

# There are several different parameter sets on New-BurntToastNotification

