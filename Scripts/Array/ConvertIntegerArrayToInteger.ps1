$Array = @(3,2,3)
$Temp = ''
foreach($num in $Array)
{
    $Temp = $Temp+" "+ $num
   # $Sum = $Sum + $num
#   Write-Host "Print Value single integer is " $num
}
Write-Host " Single integer is:"$Temp
#Write-Host "Sum Of integer is " $Sum