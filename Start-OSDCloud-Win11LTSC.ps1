#Variables to define the Windows OS / Edition etc to be applied during OSDCloud$OSImageIndex = '1'
$OSLanguage = 'en-us'
$OSActivation = 'Retail'
$ImageFileItem = 'D:\OSDCloud\OS\Install.wim'

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
    ImageFileItem = [bool]$ImageFileItem
}

#Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSImageIndex $OSImageIndex"

Start-OSDCloud -OSActivation $OSActivation -OSLanguage $OSLanguage
