#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSLanguage = 'en-us'
$OSActivation = 'Retail'
$OSImageIndex = '1'
$ImageFileTarget = 'D:\OSDCloud\OS\Install.wim'
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
}

#Launch OSDCloud



#Launch OSDCloud
Start-OSDCloud
