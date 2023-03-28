#Delayed Screen/Scroll Lock
clear-host
$valStart = 0
$valEnd = Read-Host -Prompt 'Minutes'
$WShell = New-Object -com "WScript.shell"
#while ($True)
while($valStart -le $valEnd)
{
  $WShell.sendkeys("{SCROLLLOCK}")
  start-sleep -Milliseconds 100
  $WShell.sendkeys("{SCROLLLOCK}")
  start-sleep -Seconds 60
  $valStart += 1
  #echo "Value equals: $valStart"
  #write-host $valStart
  Get-Date
}
#Locks session
rundll32.exe user32.dll,LockWorkStation 
echo "WHile loop is done"