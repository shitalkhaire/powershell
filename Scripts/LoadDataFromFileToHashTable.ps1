$HashInput = Get-Content "D:\Powershell\Projects\powershell\Scripts\InputFile.txt"
$HashTable = @{}
foreach( $line in $HashInput)
{
#Write-Output "line= $line"
$KeysArray = $line.split('=')

$HashKeys= $KeysArray[0]

$HashValues = $KeysArray[1].split(',')

# code for trim the space from array
# $myArray = New-Object System.Collections.ArrayList
# foreach($value in $HashValues)
# {

# $myArray.Add($value.Trim()) > $null

# }
# Write-Output "my array $myArray"

$HashTable.Add($HashKeys,$HashValues)

}
Write-Output "created HashTable is"$HashTable