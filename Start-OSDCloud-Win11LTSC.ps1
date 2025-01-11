#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSLanguage = 'en-us'
$OSImageIndex = '1'
$ImageFileURL = 'D:\OSDCloud\OS\Win11LTSC.wim'

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
    ImageFileItem = [string]Get-Item 'D:\OSDCloud\OS\Win11LTSC.wim'
    ImageFileFullName = [string]'D:\OSDCloud\OS\Win11LTSC.wim'
    ImageFileName = [string]'Win11LTSC.wim'
    OSImageIndex = [string]'1'
}

#Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSName Windows 11 LTSC -OSLanguage $OSLanguage"

#Launch OSDCloud
Start-OSDCloud
