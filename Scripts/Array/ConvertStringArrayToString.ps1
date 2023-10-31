$StrArray = @("I am Shital","im 29 year old","and im from india")
#Write-Host "---------" $StrArray
$Tempstr =""
foreach($str in $StrArray)
{
   if($Tempstr -eq "") 
   {
     $Tempstr = $Tempstr + $str
   }
   else
   {
     $Tempstr = $Tempstr +" "+ $str 
    }

}
$Tempstr
Write-Host " New String is:"$Tempstr
