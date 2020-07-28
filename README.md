# InteractiveAzContext
A Powershell function that you can use to interactively choose your preferred context based on accounts you previously connected through Connect-AzAccount

# How to use it
Paste the function in your Powershell profile. In my case, the file was located at:
C:\Users\\%USERNAME%\Documents\PowerShell\profile.ps1

After opening a new shell, the function 'azc' will be available

# How does it work? 
- It will list all your connected Contexts through Get-AzContext -List
- You choose an account (No input defaults to 0)
- It will list all the Enabled subscriptions accessible through the selected account
- You choose a subscription (No input defaults to 0)
- The context will be set
