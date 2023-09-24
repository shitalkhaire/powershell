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

$StoreSum = AddInt 
#Write-Output $StoreSum
EvenOdd $StoreSum