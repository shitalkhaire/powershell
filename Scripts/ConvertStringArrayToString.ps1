$StrArray = @("I am Katarina","im 32 year old","and living in US")
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
