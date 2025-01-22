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
    ImageFileItem = [System.IO.FileInfo]::new('D:\OSDCloud\OS\Win11LTSC.wim')
    ImageFileFullName = 'D:\OSDCloud\OS\Win11LTSC.wim'
    ImageFileName = 'Win11LTSC.wim'
    OSImageIndex = '1'
}

#modify ps module to support local image selection
#$OSDSCript = Get-Item -Path "X:\Program Files\WindowsPowerShell\Modules\OSD\*\Public\OSDCloud.ps1" -erroraction SilentlyContinue
#$ScriptBody = Get-Content $OSDSCript -erroraction SilentlyContinue
#$newValue = $ScriptBody -replace '$Global:OSDCloud.ImageFileItem.Fullname', '$Global:OSDCloud.ImageFileItem'
#Set-Content -Path "$OSDSCript" -Value $newValue -Force

#import-module -name OSD
#Launch OSDCloud
#
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSName Windows 11 LTSC -OSLanguage $OSLanguage"
#Launch OSDCloud
Start-OSDCloud -ImageIndex '1'
