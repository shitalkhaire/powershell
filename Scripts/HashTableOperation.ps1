[hashtable]$hash =[Ordered] @{Number = 1; Shape = "Square"; Color = "Blue"}
Write-Output "Printing original Hash Table" $hash "and it's size:" $hash.Count
$hash['price']='20'
$hash['taste']='sweet'
$hash['type']='drink'
Write-Output "Updated Hash Table:"$hash "and updated size:"$hash.Count

$NewKey = Read-Host -Prompt "Enter key first:"
$NewValue = Read-Host -Prompt "Enter hash value"
$hash.Add($NewKey,$NewValue)
Write-Output "Recently updated Hashtable is:"$hash

$SearchKey = Read-Host -Prompt "enter key for search:"
$hash.Remove($SearchKey)
Write-Output "key is found and removed.." 
Write-Output "Updated HAshTAble:"$hash
       