#Creating multiple hashTables stud1..stud3
$Stud1 = @{
        Stud_Name = 'Ruhi'
        Stud_RollNo = '4'
        Marks = '65'
}

$Stud2 = @{
        Stud_Name = 'Lindani'
        Stud_RollNo = '1'
        Marks = '40'
}

$Stud3 = @{
        Stud_Name = 'Elena'
        Stud_RollNo = '2'
        Marks = '70'
}
#created Array($StudHashTArr) of Hashtables(Stud1..Stud3)
$StudHashTArr = @($Stud1,$Stud2,$Stud3)
Write-Output "Student Records"$StudHashTArr

#$StudHashTArr | Select-Object @{n="RollNo";e={$_.Stud_RollNo}}, @{n="Name";e={$_.Stud_Name}},@{n="Marks";e={$_.Marks}}
$StudHashTArr | Sort-Object { $_.Stud_RollNo} | Select-Object @{n="RollNo";e={$_.Stud_RollNo}}, @{n="Marks";e={$_.Marks}},@{n="Name";e={$_.Stud_Name}}
if ($StudHashTArr.Count -gt 1) 
{
    $result = Sort-Object { $_.Stud_RollNo}
} 
else 
{
    $result = $StudHashTArr
}    
Write-Output "after sort" $result











# for ($i = 0; $i -lt $StudHashTArr.Count; $i++) 
# {
#     for ($j = 0; $j -lt $StudHashTArr.Count; $j++)
#     {
#         if($StudHashTArr[$i].Stud_RollNo -lt $StudHashTArr[$j].Stud_RollNo)
#         {
#             $Store = $StudHashTArr[$i]
#             $StudHashTArr[$i] = $StudHashTArr[$j]
#             $StudHashTArr[$j] = $Store
#         }
#     }

# }
# Write-Output "Sorted Students Record with roll num:"$StudHashTArr