[String] $Msg = "Welcome"
[String] $Msg2 = "Hello"
[String] $Msg3 = "Good Day"
#$StringLength = $Msg.Length

$chararray1 = [char[]] $Msg
$chararray2 =  $Msg2.ToCharArray()
Write-Host "First Way of of Creating CharacterArray:=" $chararray1
Write-Host "Second Way of Creating CharacterArray:=" $chararray2
$Store = ""
$Minus= 1
foreach($char in $chararray1)
{
    $lastChar = $chararray1[$chararray1.Count-1 - $Minus]
    $Minus++
    $Store = $Store + $lastChar 

}
Write-Host "Reverse String" $Store


$finalString
for($i=$chararray2.Length;$i -gt -1;$i--)
{
    $finalString= $finalString + $chararray2[$i]
}
Write-Host "Reverse ====" $finalString

$chararray3 =  $Msg3.ToCharArray()
$ReverseStr = ""
for($i= $Msg3.Length;$i -ge 0; $i--)
{
    $ReverseStr = $ReverseStr + $chararray3[$i]
}
Write-Host "Reverse String =" $ReverseStr
