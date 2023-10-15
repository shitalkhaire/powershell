# Imported another script here..
. "./ComputerOperationsFunction.ps1"

do
{

Write-Output "1. Get Information about User"
Write-Output "2. Get Info about BIOS"
Write-Output "3. Get Info about windows version and service pack"
Write-Output "4. Get general processor information "
Write-Output "5. Get Information about Desktop"
Write-Output "6. Get Info about HotFix"
Write-Output "7. Get Info about Directories"
Write-Output "8. Get Info about Services"
Write-Output "x. To Exit"
$choice = Read-Host -Prompt "Enter your choise.." 

Switch ($choice)
{
        1{
        #this is an non parameter method which shows info about local user.
            $userPropArr = @()
            Write-Host "NumberOfLicensedUsers,NumberOfUsers, RegisteredUser,NumberOfProcesses"
            $userProp = Read-Host -Prompt "Enter User's (valid) properties="
            if ($userPropArr.Count -eq 0 -or $userPropArr.Count -ne 0 ) 
            {
                #adding new element ($userProp) in array $userPropArr
                $userPropArr += $userProp
                foreach($Prop in $userPropArr)
                {
                    $Prop = $Prop.Split(',')
                    $userPropArr2 += $Prop
               
                
                    $grabData = UserInfo $userPropArr2
                #    Write-Host "Properties are "$userPropArr2
                ShowUserDetails $grabData 
                }    
             } #end of for loop

        }

        2{
            #calling BIOS method to get more info
            $BiosPropArr = @()
            Write-Host "BIOSVersion, BuildNumber,BiosCharacteristics"
            $BiosProp = Read-Host -Prompt "Enter Bios (valid) properties="
            if ($BiosPropArr.Count -eq 0 -or $BiosPropArr.Count -ne 0 ) 
            {
                #adding new element ($userProp) in array $userPropArr
                $BiosPropArr += $BiosProp
                foreach($bios_prop in $BiosPropArr)
                {
                    $bios_prop = $bios_prop.Split(',')
                    $BiosPropArr2 += $bios_prop
            
                    $CollectData = BIOSInfo $BiosPropArr2
                    ShowResultsForBios $CollectData
                }   
            }
        }
        
        3{
            #about windows version and more
            $OSPropArr = @()
            Write-Host "BuildType,OSType,ServicePackMajorVersion"
            $OSProp = Read-Host -Prompt "Enter OS's (valid) properties="
            if ($OSPropArr.Count -eq 0 -or $OSPropArr.Count -ne 0 ) 
            {
                #adding new element ($userProp) in array $userPropArr
                $OSPropArr += $OSProp
                foreach($os_Prop in $OSPropArr)
                {
                    $os_Prop = $os_Prop.Split(',')
                    $OSPropArr2 += $os_Prop
                
                    $grabOSInfo = OSInfo $OSPropArr2
                #    Write-Host "Properties are "$userPropArr2
                ShowResultsForOS $grabOSInfo 
                }    
            } #end of for loop
        
        }
        4{
            #about  processor information
            $CPUPropArr = @()
            Write-Host "Name,Manufacturer,SocketDesignation"
            $CPUProp = Read-Host -Prompt "Enter OS's (valid) properties mentioned above="
            if ($CPUPropArr.Count -eq 0 -or $CPUPropArr.Count -ne 0 ) 
            {
                #adding new element ($userProp) in array $userPropArr
                $CPUPropArr += $CPUProp
                foreach($cpu_prop in $CPUPropArr)
                {
                    $cpu_prop = $cpu_prop.Split(',')
                    $CPUPropArr2 += $cpu_prop
            
                    $catchCpuInfo = ProcessorInfo $CPUPropArr2
                    ShowCPUSetting $catchCpuInfo
                }   
            }
        }
        5{
            # Information about Desktop Settings 
            $DeskPropArr = @()
            Write-Host "CimClass,CimInstanceProperties "
            $DeskProp = Read-Host -Prompt "Enter (valid) properties mentioned above="
            if ($DeskPropArr.Count -eq 0 -or $DeskPropArr.Count -ne 0 ) 
            {
                # adding new properties in Array
                $DeskPropArr += $DeskProp
                foreach($desk_prop in $CPUPropArr)
                {
                    $desk_prop = $desk_prop.Split(',')
                    $DeskPropArr2 += $desk_prop
            
                    $collectDeskInfo = DeskTopSetting $DeskPropArr2
                    ShowDesktopSettings $collectDeskInfo
                }   
            }
        }
        6{
             # Information about Hotfixes Settings 
             $HotfxPropsArr = @()
             Write-Host "HotFixID, Description, InstalledOn, InstalledBy"
             $hotFixProp = Read-Host -Prompt "Enter (valid) properties mentioned above="
             if ($HotfxPropsArr.Count -eq 0 -or $HotfxPropsArr.Count -ne 0 ) 
             {
                 # adding new properties in Array
                 $HotfxPropsArr += $hotFixProp
                 foreach($prop in $HotfxPropsArr)
                 {
                     $prop = $prop.Split(',')
                     $HotfxPropsArr2 += $prop
             
                     $catchHotfx = hotFixInfo $HotfxPropsArr2
                     ShowHotFixes $catchHotfx
                 }   
             }
        }
        7{
                # Information about Directories
                $DirPropArr = @()
                Write-Host "Caption, Size, FreeSpace"
                $DirProp = Read-Host -Prompt "Enter (valid) properties mentioned above="
                if ($DirPropArr.Count -eq 0 -or $DirPropArr.Count -ne 0 ) 
                {
                    # adding new properties in Array
                    $DirPropArr += $DirProp
                    foreach($dir_prop in $DirPropArr)
                    {
                        $dir_prop = $dir_prop.Split(',')
                        $DirPropArr2 += $dir_prop
                
                        $holdDirInfo= DirectoriesInfo $DirPropArr2
                        ShowResultsOfDirectories $holdDirInfo
                    }   
                }
        }

        8{
            # Information about Services
            $ServisPropsArr = @()
            Write-Host "Status,Name,DisplayName"
            $ServisProps = Read-Host -Prompt "Enter valid properties mentioned above="
            if ($ServisPropsArr.Count -eq 0 -or $ServisPropsArr.Count -ne 0 ) 
            {
                # adding new properties in Array
                $ServisPropsArr += $ServisProps
                foreach($Sprop in $ServisPropsArr)
                {
                    $Sprop = $Sprop.Split(',')
                    $ServisPropsArr2 += $Sprop
                    $storeInfo= getServices $ServisPropsArr2
                    ShowResultsForServices $storeInfo
                }   
            }
        }

        9{
            break
            
        }
 
} # end of switch    

}while ($choice -ne 'x')

