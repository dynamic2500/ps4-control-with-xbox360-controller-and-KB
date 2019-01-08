########## function check software installed
function Is-Installed( $program ) {
    
    $x86 = ((Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall") |
        Where-Object { $_.GetValue( "DisplayName" ) -like "*$program*" } ).Length -gt 0;

    $x64 = ((Get-ChildItem "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall") |
        Where-Object { $_.GetValue( "DisplayName" ) -like "*$program*" } ).Length -gt 0;

    return $x86 -or $x64;
}

########### declare resource url
$virtualControlurl = "https://nchc.dl.sourceforge.net/project/vjoy-controller/Virtual%20Controller%20v1051%20Setup.exe"
$vdx = "https://downloads.vigem.org/archive/VDX_x86_x64_latest.zip"
$msxboxacc = "http://download.microsoft.com/download/6/9/4/69446ACF-E625-4CCF-8F56-58B589934CD3/Xbox360_64Eng.exe"
$psrplay = "https://remoteplay.dl.playstation.net/remoteplay/module/win/RemotePlayInstaller.exe"
$tmpdir = "c:\remoteplaydownload"

Write-output "Create Temp Dir: c:\remoteplaydownload"
mkdir -path c:\ -name remoteplaydownload -force

Write-output "Download Virtual Controller Binary.........."
Invoke-WebRequest -Uri $virtualControlurl -OutFile $tmpdir"\VTControl.exe"
Write-output "Download VDX Zip.........."
Invoke-WebRequest -Uri $vdx -OutFile $tmpdir"\vdx.zip"
Write-output "Download MS xbox360 Accessories Tooles Binary.........."
Invoke-WebRequest -Uri $msxboxacc -OutFile $tmpdir"\msxboxacc.exe"
Write-output "Download PS4 Remote Play Binary.........."
Invoke-WebRequest -Uri $psrplay -OutFile $tmpdir"\psrplay.exe"

Write-output "Extract VDX Zip to $tmpdir\vdx\.........."
mkdir -path $tmpdir -name vdx -force
Expand-Archive $tmpdir"\vdx.zip" -DestinationPath $tmpdir"\vdx\"

Write-output "Install ViGem Bus..........."
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
if (!(Get-PSRepository nuget.vigem.org)) {
	Register-PSRepository -Name nuget.vigem.org -SourceLocation https://nuget.vigem.org/ -InstallationPolicy Trusted
}
if (!(Get-Module -Name ViGEmManagementModule)) {
	Install-Module ViGEmManagementModule -Repository nuget.vigem.org
}
Get-ViGEmBusDevice | Remove-ViGEmBusDevice
Add-ViGEmBusDevice
Install-ViGEmBusDeviceDriver

write-output "Install Microsoft Xbox360 Accessories tools......."
Start-Process "$tmpdir\msxboxacc.exe" -NoNewWindow -Wait

if (!(Is-Installed "Virtual Controller")) {
	write-output "install Virtual Controller........"
	Start-Process "$tmpdir\VTControl.exe" -NoNewWindow -Wait 
} else {
	write-output "Virtual Controller is INSTALLED"
}

 if (!(Is-Installed "PS4 Remote Play")) {
	write-output "install PS4 Remote Play........."
	Start-Process "$tmpdir\psrplay.exe" -NoNewWindow -Wait 
} else {
	write-output "PS4 Remote Play is INSTALLED"
}
