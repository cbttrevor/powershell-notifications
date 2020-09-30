# By default, there isn't a toast title on the 
$Header = New-BTHeader -Title Heading -Id Heading

New-BurntToastNotification -Text 'Heading', 'Subtext' -Header $Header

# You can use the -AppLogo parameter to specify an image file to display
New-BurntToastNotification -Text 'Heading', 'Subtext' -Header $Header -AppLogo "C:\Users\TrevorSullivan\Downloads\480px-Python-logo-notext.svg.png"