#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSName = 'D:\OSDCloud\OS\Win11LTSC.wim'
$OSEdition = 'Windows 11 Enterprise LTSC'
$OSImageIndex = '1'
$ImageFileSource = 'D:\OSDCloud\OS\Install.wim'

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
    ImageFileSource = [string]D:\OSDCloud\OS\
}

#Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSImageIndex $OSImageIndex"

Start-OSDCloud -OSImageIndex $OSImageIndex
