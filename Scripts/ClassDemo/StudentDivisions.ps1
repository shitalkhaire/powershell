

class StudentDivisions
{
    
    [string] $result

    [void] SetMarks([int] $marks)
    {
           $this.result = $this.SetDivision($marks)
           # return "Setted marks:"+$marks
            Write-Host ""$this.result
    }

    [string] SetDivision([int] $gradeMarks)
    {
        if($gradeMarks -ge 70)
        {  
            return "Student has a Grade A.."    

        }
        else 
        { 
            return "Student has a Grade B.."
        }
        
    }

}

        #Class Object creation  is here
        $Stud = [StudentDivisions]::new()
        
        $Stud.SetMarks(70)
        $Stud.SetMarks(50)