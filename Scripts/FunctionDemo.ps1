#writing program for all basics information about computer and it's user,owner,os,network etc.

function DeskTopSetting {
    # a command that collects information about the desktops on the local computer.
    $Deskinfo1 = Get-CimInstance -ClassName Win32_Desktop
    Write-Output "Desktop setting:" $Deskinfo1   

    #This returns information for all desktops, whether they're in use or not.
    $Deskinfo2 = Get-CimInstance -ClassName Win32_Desktop | Select-Object -ExcludeProperty "CIM*"
    Write-Output "Display Desktop setting in short:" $Deskinfo2
}
function BIOSInfo {
    # this cammand shows complete information about the system BIOS on the local computer.
    param()
    $Bios = Get-CimInstance -ClassName Win32_BIOS
   # Write-Output "BIOS information" $Bios
}
function ProcessorInfo {
    # this cammand retrieve general processor information using filter or pipe(|)
   $cpu = Get-CimInstance -ClassName Win32_Processor | Select-Object -ExcludeProperty "CIM*"
    #Write-Output "CPU information" $cpu
    return $cpu
 }
function OSInfo {
   
    #it will show information about windows version and service pack
   $osinfo = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion
   # Write-Output "OS information" $Info
 #   $osinfo | Export-Csv -Path $OutputFile -NoTypeInformation
    return $osinfo
}

function ViewResults {
    param (
    $prepare = "$_"
    )
    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\output.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation
}
    

function OSInfo2 {

    [CmdletBinding()]
    $ParameterName =New-Object -TypeName PsObject -Property @{}
    param (
        [Parameter()]
        [string] $ParameterName
      
    )
    
    Write-Output "os information2" $ParameterName
    
    #it will show information about windows version and service pack
    $OSInfo = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property BuildType,$ParameterName,ServicePackMajorVersion,ServicePackMinorVersion
    Write-Output "OS information" $OSInfo
}

function UserInfo {
    $UserDetail = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property NumberOfLicensedUsers, NumberOfUsers, RegisteredUser
    Write-Output "shows General information about local users." $UserDetail
}
