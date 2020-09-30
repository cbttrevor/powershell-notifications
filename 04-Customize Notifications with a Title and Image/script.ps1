# You can configure the heading by specifying it as the first element of the -Text string array
New-BurntToastNotification -Text 'Heading', 'Subtext', 'Third level'

New-BurntToastNotification -Text 'Really Long Text', 'Third level text that is really long. This should not be so long, but it is. Eventually if this gets long enough, the text will get cut off. One more sentence will probably make that happen.'

# By default, there isn't a title on the notification toasts
$Header = New-BTHeader -Title Heading -Id h
New-BurntToastNotification -Header $Header -Text 'Hello, this has a custom title'

# You can use the -AppLogo parameter to specify an image file to display
New-BurntToastNotification -Text 'Message From Python', 'Something happened' -Header $Header -AppLogo "C:\Users\TrevorSullivan\Downloads\480px-Python-logo-notext.svg.png"

# There is a variety of different alarm sounds that are built into the BurntToast module
New-BurntToastNotification -Sound Alarm7