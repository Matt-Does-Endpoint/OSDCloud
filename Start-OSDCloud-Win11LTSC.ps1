#Variables to define the Windows OS / Edition etc to be applied during OSDCloud$OSImageIndex = '1'
$OSLanguage = 'en-us'
$OSActivation = 'Retail'
$ImageFileItem = 'D:\OSDCloud\OS\Install.wim'
$OSImageIndex = '1'
$OSName = 'D:\OSDCloud\OS\Install.wim'

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



Start-OSDCloud -OSName $OSName -OSActivation $OSActivation -OSLanguage $OSLanguage
