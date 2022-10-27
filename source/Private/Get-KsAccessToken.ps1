function Get-KsAccessToken {
    param (
        [string]$accessTokenPath = "$env:USERPROFILE\.creds\KeySMS\keySmsAccessToken.xml"
    )

    if (!(Test-Path $accessTokenPath)) {
        New-KsAccessToken
    }

    Import-Clixml $accessTokenPath | ConvertFrom-SecureString -AsPlainText
}