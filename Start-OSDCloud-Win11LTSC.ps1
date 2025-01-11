#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSLanguage = 'en-us'

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
    ImageFileItem = 'D:\OSDCloud\OS\Win11LTSC.wim'
    ImageFileName = 'Win11LTSC.wim'
    OSImageIndex = '1'
}

#Launch OSDCloud
# ImageFileFullName = 'D:\OSDCloud\OS\Win11LTSC.wim'
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSName Windows 11 LTSC -OSLanguage $OSLanguage"
Select-OSDCloudImageIndex -ImagePath $Global:StartOSDCloud.ImageFileItem
#Launch OSDCloud
Start-OSDCloud -ImageIndex '1'
