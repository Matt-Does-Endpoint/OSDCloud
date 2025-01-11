#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSLanguage = 'en-us'
$ImageFileURL = 'D:\OSDCloud\OS\Win11LTSC.wim'
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
    OSImageIndex = '1'
    ImageFileItem = 'D:\OSDCloud\OS\Win11LTSC.wim'
    ImageFileFullName = 'D:\OSDCloud\OS\Win11LTSC.wim'
    ImageFileName = 'Win11LTSC.wim'
}

#Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSName Windows 11 LTSC -OSLanguage $OSLanguage"

#Launch OSDCloud
Start-OSDCloud -findimagefile
