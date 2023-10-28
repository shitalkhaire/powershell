class MyCar {
    [string] $BrandName
    [string] $FuelType
    [string] $NumberOfSeaters

    [void] AddBrandName([string] $myBrandName){
        ## Add argument validation logic here
        $this.BrandName = $myBrandName
    }
    [string] GetBrandName(){
        return "Brand name is " + $this.BrandName
    }
  
}

$vwGolf = [MyCar]::new()

$vwGolf.AddBrandName("Volkswagen")

Write-Host "My car is " $vwGolf.GetBrandName()
