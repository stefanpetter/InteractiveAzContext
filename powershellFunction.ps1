function azc {
    $allContexts = (Get-AzContext -List)
    $contextArray = @()
    $contextEmailArray = @()
    $contextCount = 0

    Write-Host ""
    Foreach($context in $allContexts){
        if(!$contextEmailArray.Contains($context.Account.Id)){
            $contextArray += $context
            $contextEmailArray += $context.Account.Id
            Write-Host ("[" + $contextCount + "] - " + $context.Account)
            $contextCount++
        }
    }

    $contextInput = Read-Host -Prompt 'Select Context'
    $setContext = Set-AzContext  -Context $contextArray[$contextInput]

    $allSusbcriptions = Get-AzSubscription
    $subscriptionArray = @()
    $subscriptionCount = 0

    foreach($subscription in $allSusbcriptions){
        if($subscription.State -eq 'Enabled'){
            $subscriptionArray += $subscription.Id
            Write-Host ("[" + $subscriptionCount + "] - " + $subscription.Name + " - " + $subscription.Id)
            $subscriptionCount++
        }
    }

    $subscriptionInput = Read-Host -Prompt 'Select Subscription'
    Set-AzContext -SubscriptionId $subscriptionArray[$subscriptionInput]
}