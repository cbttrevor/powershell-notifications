# Explore the built-in help
Get-Help -Name New-BurntToastNotification -Full

# Specify custom text for the notification
New-BurntToastNotification
New-BurntToastNotification -Text 'My first notification'

# Specify dynamic content for text
New-BurntToastNotification -Text ('There are currently {0} processes running on the system' -f (Get-Process).Count)

# You can suppress the notification toast. In this case, the notification will appear in the Action Center
New-BurntToastNotification -SuppressPopup -Text 'I''m in the Action Center'

# You can add custom timestamps to create notifications in the past or future
New-BurntToastNotification -Text 'Hello, I am from the past.' -CustomTimestamp (Get-Date).AddMinutes(-10)

