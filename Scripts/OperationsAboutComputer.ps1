# Imported another script here..
. "./FunctionDemo.ps1"

Write-Output "1. Get Information about User"
Write-Output "2. Get Info about BIOS"
Write-Output "3. Get Info about windows version and service pack"
Write-Output "4. Get general processor information "

$choice = Read-Host -Prompt "Enter Number from following="
switch ($choice)
{
    1 {
        #this is an non parameter method which shows info about local user.
        UserInfo
    }
    2 {
        #calling BIOS method to get more info
        BIOSInfo
    }
    3 {#about windows version and more
       # OSInfo2 "Parameter"
       $var3 = OSInfo
       ViewResults $var3
    }
    4 {
        #about  processor information
       # ProcessorInfo  | Out-File -FilePath D:\Powershell\Projects\powershell\Scripts\output.csv -Encoding string 
        $var4 = ProcessorInfo
        ViewResults $var4
    }
    
}