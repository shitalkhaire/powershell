#writing program for all basics information about computer and it's user,owner,os,network etc.
function UserInfo ([string[]] $getUsrInfo){
  #shows General information about local users.
#  Write-Host "user info"$wishWord.GetType()
#  Write-Host "user info"$wishWord.Count

$UserDetail = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property $getUsrInfo
#Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property NumberOfLicensedUsers,NumberOfUsers, RegisteredUser,NumberOfProcesses
return $UserDetail

}


function BIOSInfo([string[]] $getBInfo)
{
  #   this cammand shows complete information about the system BIOS on the local computer.
  #  $Bios = Get-CimInstance -ClassName Win32_BIOS| Select-Object BIOSVersion, BuildNumber,BiosCharacteristics
  #   Write-Output "BIOS information" $Bios
  $Bios = Get-CimInstance -ClassName Win32_BIOS| Select-Object $getBInfo
  return $Bios
}
function OSInfo([string[]] $ReqPropArr)
{
    #it will show information about windows version and service pack
    $osinfo = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property $ReqPropArr
    #$osinfo = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion
  
  # didn't worked--> $osinfo= Get-CimInstance -ClassName Win32_OperatingSystem | Format-Table -Property "$wishWord","BuildType","OSType","ServicePackMajorVersion ServicePackMinorVersion" -hidetableheaders  
    return $osinfo
}
function ProcessorInfo ([string[]] $getPropArr)
{
    
  # this cammand retrieve general processor information using filter or pipe(|)
  # $cpu = Get-CimInstance -ClassName Win32_Processor | Select-Object -Property Name,Manufacturer,SocketDesignation
  $cpuInfo = Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -Property $getPropArr 
  
  return $cpuInfo
}

function DeskTopSetting([string[]] $getDSKInfo) {
  #   a command that collects information about the desktops on the local computer.
  #  $Deskinfo1 = Get-CimInstance -ClassName Win32_Desktop | Select-Object -Property CimClass,CimInstanceProperties 
  # Write-Output "Desktop setting:" $Deskinfo1   
      $Deskinfo1 = Get-CimInstance -ClassName Win32_Desktop | Select-Object $getDSKInfo
      return $Deskinfo1
  }
function hotFixInfo ([String[]]$hotfixarr) 
{

  $hotFxInfo = Get-CimInstance -ClassName Win32_QuickFixEngineering | Select-Object -Property $hotfixarr
  #$hotFixInfo = Get-CimInstance -ClassName Win32_QuickFixEngineering | Select-Object -Property HotFixID, Description, InstalledOn, InstalledBy 
  return $hotFxInfo
}

function DirectoriesInfo ([String[]]$ReqDirarr) 
{

  $Dir_Info = Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property $ReqDirarr
#  $Dir_Info = Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property Caption, Size, FreeSpace-Filter "DriveType=3"
#  $DirSpaceCal = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" | 
# Measure-Object -Property FreeSpace,Size -Sum |
# Select-Object -Property Property,Sum
  return $Dir_Info
}

function getServices ([String[]]$Servicesarr) 
{
  $Servcs_info = Get-CimInstance -ClassName Win32_Service | Select-Object -Property $Servicesarr
  #  $Servcs_info = Get-CimInstance -ClassName Win32_Service | Select-Object -Property Status,Name,DisplayName
  return $Servcs_info
}

# Function for creation .csv file and writting data in it.
function ShowUserDetails 
{
    
  param (
    $prepare = "$_"
    )

    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\InfoUsers.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation -Append
  
}
function ShowResultsForBios
{
  
    param (
    $prepare = "$_"
    )

    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\InfoBios.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation -Append
  
}
function ShowResultsForOS 
{
    
  param (
    $prepare = "$_"
    )

    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\InfoOS.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation -Append
  
}
function ShowCPUSetting
{
    
  param (
    $prepare = "$_"
    )

    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\InfoCpu.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation -Append
  
}
function ShowDesktopSettings
{
    
  param (
    $prepare = "$_"
    )

    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\InfoDesktop.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation -Append
  
}
function ShowHotFixes 
{
    
  param (
    $prepare = "$_"
    )

    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\InfoHotFixes.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation -Append
  
}
function ShowResultsOfDirectories
{
    
  param (
    $prepare = "$_"
    )

    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\InfoDirectories.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation -Append
  
}
function ShowResultsForServices
{
    
  param (
    $prepare = "$_"
    )

    $OutputFile = "D:\Powershell\Projects\powershell\Scripts\InfoServices.csv"
    $prepare | Export-Csv -Path $OutputFile -NoTypeInformation -Append
  
}

    