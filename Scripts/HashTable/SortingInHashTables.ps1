#Created 3 HashTables Stud1,Stud2,Stud3
$HashtablesArr = @() #empty Array for storing multiple hashTables
$Stud1 = @{
        Stud_Name = 'Laura'
        Stud_RollNo = '4'
        Marks = '65'
}

$Stud2 = @{
        Stud_Name = 'Kristiana'
        Stud_RollNo = '1'
        Marks = '40'
}

$Stud3 = @{
        Stud_Name = 'Marco'
        Stud_RollNo = '2'
        Marks = '70'
}
#using += operator adding Hashtables->Stud1..3 in Array 
$HashtablesArr += $Stud1
$HashtablesArr += $Stud2
$HashtablesArr += $Stud3

Write-Output "Hashtable Records"$HashtablesArr

# foreach ($Stud in $HashtablesArr)
# {
#     $S_name = $Stud.Stud_Name
#     $S_marks= $Stud.Marks
#     $S_RollNo = $Stud.Stud_RollNo

#     Write-Host "Before Sort" $S_marks
# }
     for ($i= 0; $i -lt $HashtablesArr.Count; $i++) 
     {
    #    Write-Output "printing hash:"$HashtablesArr[$i]
        for ($j = $i+1; $j -lt $HashtablesArr.Count; $j++) 
        {
            if($HashtablesArr[$i].Marks -gt $HashtablesArr[$j].Marks)
            {
                $Temp = $HashtablesArr[$i]
                $HashtablesArr[$i] = $HashtablesArr[$j]
                $HashtablesArr[$j] = $Temp
            }
        }    
     }
     Write-Output "Sort:"$HashtablesArr

#}
   
 