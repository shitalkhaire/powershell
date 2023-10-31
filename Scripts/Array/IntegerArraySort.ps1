$Array = @(1,4,8,9,3,2)
Write-Host "given array is" $Array
for ($i = 0; $i -lt $Array.Count; $i++) 
{
    for ($j = $i+1; $j -lt $Array.Count; $j++) 
    {
         if($Array[$i] -gt $Array[$j])
         {
            $Temp = $Array[$i]
            $Array[$i] = $Array[$j]
            $Array[$j] = $Temp
         }
         
      #   Write-Host "Sorted array is:="$Temp 
      # Write-Host "i= $i j= $j"

    }
  
    #Write-Host "Sorted arrayI is:="$Array[$i] 
}

Write-Host "Sorted arrayI is:=" $Array 
 
