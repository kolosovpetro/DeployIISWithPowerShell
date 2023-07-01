Write-Host "Managing files and folders"
$siteDir = "C:\inetpub\wwwroot\Website1"
$htmlDir = ".\html\blue.html"
mkdir $siteDir -ErrorAction SilentlyContinue
Copy-Item $htmlDir -Destination "$siteDir/index.html"

Import-Module IISAdministration

New-IISSite -Name "Website1" -BindingInformation "*:80:" -PhysicalPath $siteDir