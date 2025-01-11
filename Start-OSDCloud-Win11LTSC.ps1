#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSLanguage = 'en-us'
$OSActivation = 'Retail'
$OSEdition = 'Windows 11 Enterprise LTSC'
$OSImageIndex = '1'

#Set OSDCloud Vars
$Global:MyOSDCloud = [ordered]@{
    Restart = [bool]$True
    RecoveryPartition = [bool]$true
    OEMActivation = [bool]$True
    WindowsUpdate = [bool]$true
    WindowsUpdateDrivers = [bool]$true
    WindowsDefenderUpdate = [bool]$true
    ClearDiskConfirm = [bool]$False
    ShutdownSetupComplete = [bool]$false
    ImageFileTarget = 'D:\OSDCloud\OS\Install.wim'
    OSImageIndex = '1'
}

#Launch OSDCloud



#Launch OSDCloud
Start-OSDCloud
