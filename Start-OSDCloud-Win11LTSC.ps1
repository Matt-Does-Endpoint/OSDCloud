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
    ImageFileFullName = 'D:\OSDCloud\OS\Win11LTSC.wim'
    ImageFileName = 'Win11LTSC.wim'
    OSImageIndex = '1'
}

#Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSName Windows 11 LTSC -OSLanguage $OSLanguage"

#Launch OSDCloud
Start-OSDCloud -FindImageFile
# Load the Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms

# Focus on the target window (replace "Window Title" with the exact title of the target window)
$process = Get-Process | Where-Object { $_.MainWindowTitle -like "*Window Title*" }
if ($process) {
    # Bring the window to the foreground
    $hwnd = $process.MainWindowHandle
    [void][System.Runtime.InteropServices.Marshal]::SetForegroundWindow($hwnd)

    # Send the keys
    [System.Windows.Forms.SendKeys]::SendWait("1{ENTER}")
    Start-Sleep -Milliseconds 500 # Short pause for the application to process the first input
    [System.Windows.Forms.SendKeys]::SendWait("1{ENTER}")
} else {
    Write-Host "Window not found. Ensure the title is correct."
}
