function CustomFunction ([PSCustomObject] $comingObject)
{
    Write-Host "Data of Custom object is" $comingObject
    $comingObject |  Add-Member -MemberType NoteProperty -Name "FirstName" -Value "John"
    return $comingObject
}

$MyObject = [PSCustomObject] @{
    Name = "John"
    Age = 30
    Address = "123 Main St"
}
$result = CustomFunction($MyObject)
Write-Host "updated values " $result

#Write-Output "Updated CustomObjects data:" $MyObject
