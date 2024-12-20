#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSName = 'D:\OSDCloud\OS\Win11LTSC.wim'
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
}

#Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSImageIndex $OSImageIndex"

Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSImageIndex $OSImageIndex
