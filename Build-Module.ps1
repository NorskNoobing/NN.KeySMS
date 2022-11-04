#Requires -Module ModuleBuilder
[string]$moduleName = "NN.KeySMS"
[version]$version = "0.0.3"
[string]$author = "NorskNoobing"
[string]$ProjectUri = "https://github.com/$author/$moduleName"
[string]$releaseNotes = "Update New-KsAccessToken to specify what accesstoken it needs for its input"
[string]$description = "KeySMS API integration"
[array]$tags = @("KeySMS","SMS","API")
[version]$PSversion = "7.2"

$manifestSplat = @{
    "Description" = $description
    "PowerShellVersion" = $PSversion
    "Tags" = $tags
    "ReleaseNotes" = $releaseNotes
    "Path" = ".\source\$moduleName.psd1"
    "RootModule" = "$moduleName.psm1"
    "Author" = $author
    "ProjectUri" = $ProjectUri
}
New-ModuleManifest @manifestSplat

$buildSplat = @{
    "SourcePath" = ".\source\$moduleName.psd1"
    "Version" = $version
}
Build-Module @buildSplat