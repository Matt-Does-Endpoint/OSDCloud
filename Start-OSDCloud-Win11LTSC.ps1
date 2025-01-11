#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSLanguage = 'en-us'
$OSImageIndex = '1'
$ImageFileURL = 'D:\OSDCloud\OS\Win11LTSC.wim'

$Global:MyOSDCloud.ImageFileFullName = 'D:\OSDCloud\OS\Win11LTSC.wim'
$Global:MyOSDCloud.ImageFileItem = Get-Item 'D:\OSDCloud\OS\Win11LTSC.wim'
$Global:MyOSDCloud.ImageFileName = 'Win11LTSC.wim'

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
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSName Windows 11 LTSC -OSLanguage $OSLanguage"

#Launch OSDCloud
#Start-OSDCloud -ImageFileURL $ImageFileURL -OSImageIndex $OSImageIndex
Start-OSDCloud
