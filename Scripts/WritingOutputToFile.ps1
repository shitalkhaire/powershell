
# Used param() for passing multiple arguments.
param(
  [string]$userName,
  [int]$userId,
  [string]$ProductName,
  [int]$ProductPrice
)
<# instead of displaying output on screen just written in userinfo.txt file.
write-output "User name is $userName"
write-output "User id is $userId"
write-output "Product name is $ProductName"
write-output "Product Price is $ProductPrice"
#>

$output = @($userName,$userId,$ProductName,$ProductPrice)
#Write-Output "---------------------------------------------------------$output"

$output | Add-Content -Path D:\Powershell\Projects\powershell\Scripts\userinfo.txt
Write-Output "File Information is here.."
$filesRecords = Get-Content -path D:\Powershell\Projects\powershell\Scripts\userinfo.txt
$lines = 0
$productCount = 0

$search = Read-Host -Prompt "ENter product name for search:"

foreach($record in $filesRecords) 
{

  if($record -match $search)  # The term in brackets is a true/false value
  {
    $productCount+=1; 
  }
  #Write-Output "similar products count is := $productCount "
}
Write-Output $search "purchased" $productCount "times"
