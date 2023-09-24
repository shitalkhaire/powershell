#written functions for printing even and odd number.
function EvenOdd
{
param(
        [int]$num1
     #   [int]$num2
        )
  <#  Write-Output "entered in funtion $num1 And $num2"
  # $ans= num1 %2 
  #>
   if($num1 % 2 -eq 0)
   {
    Write-Output " $num1 is even"
    }
    else {
        Write-Output "$num1 is odd"
    }

}