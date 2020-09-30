# Search for the latest version of the module in PowerShell Gallery
Find-Module -Name BurntToast

# Install the module into your user (non-admin) directory
Install-Module -Name BurntToast -Scope CurrentUser -Force

# Import the module into the PowerShell session
Import-Module -Name BurntToast

# Examine the commands in the BurntToast module
Get-Command -Module BurntToast

# Some commands are deprecated (shouldn't be used in new code)
