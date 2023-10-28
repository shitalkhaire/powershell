class FindLargeAndSmallInteger
{
  
    [int] FindLargeNum([int[]] $IntArray)
    {
        [int]$Temp=0
        for($i=0; $i -le $IntArray.Length; $i++)
        {
            
                if($IntArray[$i] -gt $Temp)
                {
                    $Temp = $IntArray[$i]
                  
                }
            
        }
    return $Temp
    }
    [int] FindSmallNum([int[]] $IntArray2)
    {
        [int]$small= 99999
        for($j= 0; $j -le $IntArray2.Length; $j++)
        {
            if($IntArray2[$j] -lt $small)
            {
                $small = $IntArray2[$j]
              
            }
            Write-Host "values of Small"$small
        }    
       
    return $small
    }
}

$obj = [FindLargeAndSmallInteger]::new()
[int[]]$val = @(1,2,300,100)
$large = $obj.FindLargeNum($val)
Write-Host "Large number is" $large
$result = $obj.FindSmallNum(@(20,30,1))
Write-Host "Small number is" $result
