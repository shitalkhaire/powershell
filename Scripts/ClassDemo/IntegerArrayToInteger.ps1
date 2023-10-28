class IntegerArrayToInteger {
    [int] $Sum
   <# Constructor creation 
   IntegerArrayToInteger()
   {
    $this.Sum = 0
    Write-Host "Constructor called"
   }
   #>
    [void] CalculateSum([int[]] $NumericArr)
    {
        $this.Sum = 0
        foreach($num in $NumericArr)
        {
         #   $Temp = $Temp+" "+ $num
            $this.Sum = $this.Sum + $num
        }
       # Write-Host " Single integer is:"$Temp
        Write-Host "current Sum is "$this.Sum
    }
}

#object creation is below
$obj = [IntegerArrayToInteger]::new()
[int[]]$inputArr = @(20,10,5)
$obj.CalculateSum($inputArr)


$obj.CalculateSum(@(10,10,5))

