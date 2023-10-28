class Students 
{
    [string] $StudentName
    [int] $RollNo
    [char] $Division

    [void] SetStudentInfo([string] $EnteredName, [int] $rollNum, [char] $div)
    {
        $this.StudentName = $EnteredName
        $this.RollNo = $rollNum
        $this.Division = $div
    }

    [void] DisplayStudentInfo()
    {
        Write-Host "Student name is "$this.StudentName
        Write-Host "Student Roll number is "$this.RollNo
        Write-Host "Student Division is " $this.Division
        
    }
  
}
$Studt = [Students]::new()
$Studt.SetStudentInfo("Ayansh Nilesh Khaire",10,'A')
$Studt.DisplayStudentInfo()
