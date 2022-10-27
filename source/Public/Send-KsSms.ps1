function Send-KsSms {
    param (
        [Parameter(Mandatory)][string]$senderName,
        [Parameter(Mandatory)][string]$username,
        [Parameter(Mandatory)][array]$receivers,
        [Parameter(Mandatory)][string]$message
    )

    $splat = @{
        "Method" = "GET"
        "Uri" = "https://api.keysms.no/v1/messages/send"
        "Body" = @{
            "apiKey" = Get-KsAccessToken
            "message" = $message
            "sender" = $senderName
            "username" = $username
            "receivers" = $receivers -join ","
        }
    }
    Invoke-RestMethod @splat
}