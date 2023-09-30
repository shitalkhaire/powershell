# imported another script here
. "./PrintingEvenOdd.ps1"

function AddInt
{
param(
        [int]$n1 = 3,
        [int]$n2= 4
        )
   # Write-Output "entered in funtion $n1 And $n2"
   $sum = $n1 + $n2 
   return $sum
}
#stored results of method AddInt in StoreSum variable 
$StoreSum = AddInt 
#Calling Function from another script with $StoreSum argument
EvenOdd $StoreSum