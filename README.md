# InteractiveAzContext
A Powershell function that you can use to interactively choose your preferred context based on accounts you previously connected through Connect-AzAccount

# How to use it
Paste the function in your Powershell profile.
By running $profile within powershell you can determine the location of your PowerShell Profile. Prefixing the variable with your favorite will open the profile directly. For example: 

```
code $profile
```

After opening a new shell, the function 'azc' will be available. Please note that this will impact the loading time of your PowerShell setup.

# How does it work? 
- It will list all your connected Contexts through Get-AzContext -List
- You choose an account (No input defaults to 0)
- It will list all the Enabled subscriptions accessible through the selected account
- You choose a subscription (No input defaults to 0)
- The context will be set
