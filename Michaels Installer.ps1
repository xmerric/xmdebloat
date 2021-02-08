$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
}

# or

if(test-path "C:\ProgramData\chocolatey\choco.exe"){

}

$wshell = New-Object -ComObject Wscript.Shell
# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}



$Button1_Click = ({Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$Button2_Click = ({ 
    Write-Host "Installing Google Chrome"
    choco install googlechrome -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$Button3_Click = ({ 
    Write-Host "Installing Adobe Reader DC"
    choco install adobereader -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$Button4_Click = ({ 
    Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$Button5_Click = ({ 
    Write-Host "Installing 7-Zip"
    choco install 7zip -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$Button6_Click = ({ 
    Write-Host "Installing Visual Studio Code"
    choco install vscode -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$Button7_Click = ({ 
    Write-Host "Installing New Windows Terminal"
    choco install microsoft-windows-terminal -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$Button8_Click = ({ 
    Write-Host "Installing Microsoft PowerToys"
    choco install powertoys -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$Button9_Click = ({ 
    Write-Host "Installing Ccleaner"
    choco install ccleaner -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button10_Click = ({ 
    Write-Host "Installing Java Runtime"
    choco install javaruntime -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button11_Click = ({ 
    Write-Host "Installing Gimp Photo Edit"
    choco install gimp -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button12_Click = ({ 
    Write-Host "Installing Filezilla FTP"
    choco install filezilla -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button13_Click = ({ 
    Write-Host "Installing Putty"
    choco install putty.install -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button14_Click = ({ 
    Write-Host "Installing Dropbox"
    choco install dropbox -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button15_Click = ({ 
    Write-Host "Installing Audacity"
    choco install audacity -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button16_Click = ({ 
    Write-Host "Installing K-lite Codecs Mega"
    choco install k-litecodecpackmega -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button17_Click = ({ 
    Write-Host "Installing Firefox"
    choco install firefox-y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button18_Click = ({ 
    Write-Host "Installing Microsoft Teams"
    choco install microsoft-teams.install -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button19_Click = ({ 
    Write-Host "Installing K-lite Codecs Mega"
    choco install k-litecodecpackmega -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button20_Click = ({ 
    Write-Host "Installing K-lite Codecs Mega"
    choco install k-litecodecpackmega -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button21_Click = ({ 
    Write-Host "Installing K-lite Codecs Mega"
    choco install k-litecodecpackmega -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button22_Click = ({ 
    Write-Host "Installing K-lite Codecs Mega"
    choco install k-litecodecpackmega -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button23_Click = ({ 
    Write-Host "Installing K-lite Codecs Mega"
    choco install k-litecodecpackmega -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button24_Click = ({ 
    Write-Host "Installing K-lite Codecs Mega"
    choco install k-litecodecpackmega -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button25_Click = ({ 
    Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button26_Click = ({ 
    Write-Host "Upgrading Chocolatey"	
	choco upgrade chocolatey -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button27_Click = ({ 
    Write-Host "Creating Restore Point incase something bad happens"
    Enable-ComputerRestore -Drive "C:\"
    Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"

	Write-Host "Running O&O Shutup with Recommended Settings"
    Import-Module BitsTransfer		choco install shutup10 -y
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/xmerric/win10script/master/ooshutup10.cfg" -Destination ooshutup10.cfg		OOSU10 ooshutup10.cfg /quiet
	Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe	
	./OOSU10.exe ooshutup10.cfg /quiet

    Write-Host "Disabling Telemetry..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Write-Host "Disabling Application suggestions..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
    Write-Host "Disabling Activity History..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
    Write-Host "Disabling Location Tracking..."
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
    Write-Host "Disabling automatic Maps updates..."
	Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
    Write-Host "Disabling Feedback..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
    Write-Host "Disabling Tailored Experiences..."
	If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
		New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
    Write-Host "Disabling Advertising ID..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
    Write-Host "Disabling Error reporting..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
    Write-Host "Restricting Windows Update P2P only to local network..."
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
    Write-Host "Stopping and disabling Diagnostics Tracking Service..."
	Stop-Service "DiagTrack" -WarningAction SilentlyContinue
	Set-Service "DiagTrack" -StartupType Disabled
    Write-Host "Stopping and disabling WAP Push Service..."
	Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
	Set-Service "dmwappushservice" -StartupType Disabled
    Write-Host "Enabling F8 boot menu options..."
	bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
    Write-Host "Stopping and disabling Home Groups services..."
	Stop-Service "HomeGroupListener" -WarningAction SilentlyContinue
	Set-Service "HomeGroupListener" -StartupType Disabled
	Stop-Service "HomeGroupProvider" -WarningAction SilentlyContinue
	Set-Service "HomeGroupProvider" -StartupType Disabled
    Write-Host "Disabling Remote Assistance..."
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 0
    Write-Host "Disabling Storage Sense..."
	Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Stopping and disabling Superfetch service..."
	Stop-Service "SysMain" -WarningAction SilentlyContinue
	Set-Service "SysMain" -StartupType Disabled
    Write-Host "Setting BIOS time to UTC..."
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 1
    Write-Host "Disabling Hibernation..."
	Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 0
    Write-Host "Showing task manager details..."
	$taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
	Do {
		Start-Sleep -Milliseconds 100
		$preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
	} Until ($preferences)
	Stop-Process $taskmgr
	$preferences.Preferences[28] = 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
    Write-Host "Showing file operations details..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
    Write-Host "Hiding Task View button..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
    Write-Host "Hiding People icon..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
    Write-Host "Showing all tray icons..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -Type DWord -Value 0
	Write-Host "Enabling NumLock after startup..."
	If (!(Test-Path "HKU:")) {
		New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS | Out-Null
	}
	Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483650
	Add-Type -AssemblyName System.Windows.Forms
	If (!([System.Windows.Forms.Control]::IsKeyLocked('NumLock'))) {
		$wsh = New-Object -ComObject WScript.Shell
		$wsh.SendKeys('{NUMLOCK}')
	}

    Write-Host "Changing default Explorer view to This PC..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
    Write-Host "Hiding 3D Objects icon from This PC..."
	Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue

$Bloatware = @(

        #Unnecessary Windows 10 AppX Apps
        "Microsoft.3DBuilder"
        "Microsoft.AppConnector"
	    "Microsoft.BingFinance"
	    "Microsoft.BingNews"
	    "Microsoft.BingSports"
	    "Microsoft.BingTranslator"
	    "Microsoft.BingWeather"
        "Microsoft.GetHelp"
        "Microsoft.Getstarted"
        "Microsoft.Messaging"
        "Microsoft.Microsoft3DViewer"
        "Microsoft.MicrosoftSolitaireCollection"
        "Microsoft.NetworkSpeedTest"
        "Microsoft.News"
        "Microsoft.Office.Lens"
        "Microsoft.Office.Sway"
        "Microsoft.OneConnect"
        "Microsoft.People"
        "Microsoft.Print3D"
        "Microsoft.SkypeApp"
        "Microsoft.StorePurchaseApp"
        "Microsoft.Wallet"
        "Microsoft.Whiteboard"
        "Microsoft.WindowsAlarms"
        "microsoft.windowscommunicationsapps"
        "Microsoft.WindowsFeedbackHub"
        "Microsoft.WindowsMaps"
        "Microsoft.WindowsSoundRecorder"
        "Microsoft.ZuneMusic"
        "Microsoft.ZuneVideo"

        #Sponsored Windows 10 AppX Apps
        #Add sponsored/featured apps to remove in the "*AppName*" format
        "*EclipseManager*"
        "*ActiproSoftwareLLC*"
        "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
        "*Duolingo-LearnLanguagesforFree*"
        "*PandoraMediaInc*"
        "*CandyCrush*"
        "*BubbleWitch3Saga*"
        "*Wunderlist*"
        "*Flipboard*"
        "*Twitter*"
        "*Facebook*"
        "*Royal Revolt*"
        "*Sway*"
        "*Speed Test*"
        "*Dolby*"
        "*Viber*"
        "*ACGMediaPlayer*"
        "*Netflix*"
        "*OneCalendar*"
        "*LinkedInforWindows*"
        "*HiddenCityMysteryofShadows*"
        "*Hulu*"
        "*HiddenCity*"
        "*AdobePhotoshopExpress*"
                     
        #Optional: Typically not removed but you can if you need to for some reason
        #"*Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe*"
        #"*Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe*"
        #"*Microsoft.BingWeather*"
        #"*Microsoft.MSPaint*"
        #"*Microsoft.MicrosoftStickyNotes*"
        #"*Microsoft.Windows.Photos*"
        #"*Microsoft.WindowsCalculator*"
        #"*Microsoft.WindowsStore*"
    )
    foreach ($Bloat in $Bloatware) {
        Get-AppxPackage -Name $Bloat| Remove-AppxPackage
        Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $Bloat | Remove-AppxProvisionedPackage -Online
        Write-Host "Trying to remove $Bloat."
    }

    Write-Host "Installing Windows Media Player..."
	Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null

    #Stops edge from taking over as the default .PDF viewer    
    Write-Host "Stopping Edge from taking over as the default .PDF viewer"
	# Identify the edge application class 
	$Packages = "HKCU:SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\Repository\Packages" 
	$edge = Get-ChildItem $Packages -Recurse -include "MicrosoftEdge" 
		
	# Specify the paths to the file and URL associations 
	$FileAssocKey = Join-Path $edge.PSPath Capabilities\FileAssociations 
	$URLAssocKey = Join-Path $edge.PSPath Capabilities\URLAssociations 
		
	# get the software classes for the file and URL types that Edge will associate 
	$FileTypes = Get-Item $FileAssocKey 
	$URLTypes = Get-Item $URLAssocKey 
		
	$FileAssoc = Get-ItemProperty $FileAssocKey 
	$URLAssoc = Get-ItemProperty $URLAssocKey 
		
	$Associations = @() 
	$Filetypes.Property | foreach {$Associations += $FileAssoc.$_} 
	$URLTypes.Property | foreach {$Associations += $URLAssoc.$_} 
		
	# add registry values in each software class to stop edge from associating as the default 
	foreach ($Association in $Associations) 
			{ 
			$Class = Join-Path HKCU:SOFTWARE\Classes $Association 
			#if (Test-Path $class) 
			#   {write-host $Association} 
			# Get-Item $Class 
			Set-ItemProperty $Class -Name NoOpenWith -Value "" 
			Set-ItemProperty $Class -Name NoStaticDefaultVerb -Value "" 
			} 
            
    
    #Removes Paint3D stuff from context menu
$Paint3Dstuff = @(
        "HKCR:\SystemFileAssociations\.3mf\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.bmp\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.fbx\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.gif\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.jfif\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.jpe\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.jpeg\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.jpg\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.png\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.tif\Shell\3D Edit"
	"HKCR:\SystemFileAssociations\.tiff\Shell\3D Edit"
    )
    #Rename reg key to remove it, so it's revertible
    foreach ($Paint3D in $Paint3Dstuff) {
        If (Test-Path $Paint3D) {
	    $rmPaint3D = $Paint3D + "_"
	    Set-Item $Paint3D $rmPaint3D
	}
    }
    
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})


$Button28_Click = ({ 
    Write-Host "Disabling driver offering through Windows Update..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
    Write-Host "Disabling Windows Update automatic restart..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$Form1_Load = {
}
Add-Type -AssemblyName System.Windows.Forms
$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$Button1 = $null
[System.Windows.Forms.Button]$Button2 = $null
[System.Windows.Forms.Button]$Button3 = $null
[System.Windows.Forms.Button]$Button4 = $null
[System.Windows.Forms.Button]$Button5 = $null
[System.Windows.Forms.Button]$Button6 = $null
[System.Windows.Forms.Button]$Button7 = $null
[System.Windows.Forms.Button]$Button8 = $null
[System.Windows.Forms.Button]$Button9 = $null
[System.Windows.Forms.Button]$Button10 = $null
[System.Windows.Forms.Button]$Button11 = $null
[System.Windows.Forms.Button]$Button12 = $null
[System.Windows.Forms.Button]$Button13 = $null
[System.Windows.Forms.Button]$Button14 = $null
[System.Windows.Forms.Button]$Button15 = $null
[System.Windows.Forms.Button]$Button16 = $null
[System.Windows.Forms.Button]$Button17 = $null
[System.Windows.Forms.Button]$Button18 = $null
[System.Windows.Forms.Button]$Button19 = $null
[System.Windows.Forms.Button]$Button20 = $null
[System.Windows.Forms.Button]$Button21 = $null
[System.Windows.Forms.Button]$Button22 = $null
[System.Windows.Forms.Button]$Button23 = $null
[System.Windows.Forms.Button]$Button24 = $null
[System.Windows.Forms.Button]$Button25 = $null
[System.Windows.Forms.Button]$Button26 = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.GroupBox]$GroupBox1 = $null
[System.Windows.Forms.Button]$Button28 = $null
[System.Windows.Forms.Button]$Button27 = $null
[System.Windows.Forms.PictureBox]$PictureBox1 = $null
function InitializeComponent
{
$Button1 = (New-Object -TypeName System.Windows.Forms.Button)
$Button2 = (New-Object -TypeName System.Windows.Forms.Button)
$Button3 = (New-Object -TypeName System.Windows.Forms.Button)
$Button4 = (New-Object -TypeName System.Windows.Forms.Button)
$Button5 = (New-Object -TypeName System.Windows.Forms.Button)
$Button6 = (New-Object -TypeName System.Windows.Forms.Button)
$Button7 = (New-Object -TypeName System.Windows.Forms.Button)
$Button8 = (New-Object -TypeName System.Windows.Forms.Button)
$Button9 = (New-Object -TypeName System.Windows.Forms.Button)
$Button10 = (New-Object -TypeName System.Windows.Forms.Button)
$Button11 = (New-Object -TypeName System.Windows.Forms.Button)
$Button12 = (New-Object -TypeName System.Windows.Forms.Button)
$Button13 = (New-Object -TypeName System.Windows.Forms.Button)
$Button14 = (New-Object -TypeName System.Windows.Forms.Button)
$Button15 = (New-Object -TypeName System.Windows.Forms.Button)
$Button16 = (New-Object -TypeName System.Windows.Forms.Button)
$Button17 = (New-Object -TypeName System.Windows.Forms.Button)
$Button18 = (New-Object -TypeName System.Windows.Forms.Button)
$Button19 = (New-Object -TypeName System.Windows.Forms.Button)
$Button20 = (New-Object -TypeName System.Windows.Forms.Button)
$Button21 = (New-Object -TypeName System.Windows.Forms.Button)
$Button22 = (New-Object -TypeName System.Windows.Forms.Button)
$Button23 = (New-Object -TypeName System.Windows.Forms.Button)
$Button24 = (New-Object -TypeName System.Windows.Forms.Button)
$Button25 = (New-Object -TypeName System.Windows.Forms.Button)
$Button26 = (New-Object -TypeName System.Windows.Forms.Button)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$GroupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$Button27 = (New-Object -TypeName System.Windows.Forms.Button)
$Button28 = (New-Object -TypeName System.Windows.Forms.Button)
$PictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$GroupBox1.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$PictureBox1).BeginInit()
$Form1.SuspendLayout()
#
#Button1
#
$Button1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]104))
$Button1.Name = [System.String]'Button1'
$Button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button1.TabIndex = [System.Int32]0
$Button1.Text = [System.String]'Firefox'
$Button1.UseCompatibleTextRendering = $true
$Button1.UseVisualStyleBackColor = $true
$Button1.add_Click($Button1_Click)
#
#Button2
#
$Button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]157))
$Button2.Name = [System.String]'Button2'
$Button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button2.TabIndex = [System.Int32]1
$Button2.Text = [System.String]'Chrome'
$Button2.UseCompatibleTextRendering = $true
$Button2.UseVisualStyleBackColor = $true
$Button2.add_Click($Button2_Click)
#
#Button3
#
$Button3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]205))
$Button3.Name = [System.String]'Button3'
$Button3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]35))
$Button3.TabIndex = [System.Int32]2
$Button3.Text = [System.String]'Acrobat Reader DC'
$Button3.UseCompatibleTextRendering = $true
$Button3.UseVisualStyleBackColor = $true
$Button3.add_Click($Button3_Click)
#
#Button4
#
$Button4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]257))
$Button4.Name = [System.String]'Button4'
$Button4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]35))
$Button4.TabIndex = [System.Int32]3
$Button4.Text = [System.String]'NotePad ++'
$Button4.UseCompatibleTextRendering = $true
$Button4.UseVisualStyleBackColor = $true
$Button4.add_Click($Button4_Click)
#
#Button5
#
$Button5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]315))
$Button5.Name = [System.String]'Button5'
$Button5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]35))
$Button5.TabIndex = [System.Int32]4
$Button5.Text = [System.String]'7zip'
$Button5.UseCompatibleTextRendering = $true
$Button5.UseVisualStyleBackColor = $true
$Button5.add_Click($Button5_Click)
#
#Button6
#
$Button6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]373))
$Button6.Name = [System.String]'Button6'
$Button6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]35))
$Button6.TabIndex = [System.Int32]5
$Button6.Text = [System.String]'Visual Studio Code'
$Button6.UseCompatibleTextRendering = $true
$Button6.UseVisualStyleBackColor = $true
$Button6.add_Click($Button6_Click)
#
#Button7
#
$Button7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]427))
$Button7.Name = [System.String]'Button7'
$Button7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]35))
$Button7.TabIndex = [System.Int32]6
$Button7.Text = [System.String]'New Windows Terminal'
$Button7.UseCompatibleTextRendering = $true
$Button7.UseVisualStyleBackColor = $true
$Button7.add_Click($Button7_Click)
#
#Button8
#
$Button8.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]479))
$Button8.Name = [System.String]'Button8'
$Button8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button8.TabIndex = [System.Int32]7
$Button8.Text = [System.String]'Power toys'
$Button8.UseCompatibleTextRendering = $true
$Button8.UseVisualStyleBackColor = $true
$Button8.add_Click($Button8_Click)
#
#Button9
#
$Button9.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]290,[System.Int32]104))
$Button9.Name = [System.String]'Button9'
$Button9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button9.TabIndex = [System.Int32]8
$Button9.Text = [System.String]'Ccleaner'
$Button9.UseCompatibleTextRendering = $true
$Button9.UseVisualStyleBackColor = $true
$Button9.add_Click($Button9_Click)
#
#Button10
#
$Button10.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]290,[System.Int32]157))
$Button10.Name = [System.String]'Button10'
$Button10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button10.TabIndex = [System.Int32]9
$Button10.Text = [System.String]'Java Runtime'
$Button10.UseCompatibleTextRendering = $true
$Button10.UseVisualStyleBackColor = $true
$Button10.add_Click($Button10_Click)
#
#Button11
#
$Button11.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]290,[System.Int32]205))
$Button11.Name = [System.String]'Button11'
$Button11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button11.TabIndex = [System.Int32]10
$Button11.Text = [System.String]'Gimp Photo Edit'
$Button11.UseCompatibleTextRendering = $true
$Button11.UseVisualStyleBackColor = $true
$Button11.add_Click($Button11_Click)
#
#Button12
#
$Button12.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]290,[System.Int32]257))
$Button12.Name = [System.String]'Button12'
$Button12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button12.TabIndex = [System.Int32]11
$Button12.Text = [System.String]'Filezilla FTP'
$Button12.UseCompatibleTextRendering = $true
$Button12.UseVisualStyleBackColor = $true
$Button12.add_Click($Button12_Click)
#
#Button13
#
$Button13.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]290,[System.Int32]315))
$Button13.Name = [System.String]'Button13'
$Button13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button13.TabIndex = [System.Int32]12
$Button13.Text = [System.String]'Putty'
$Button13.UseCompatibleTextRendering = $true
$Button13.UseVisualStyleBackColor = $true
$Button13.add_Click($Button13_Click)
#
#Button14
#
$Button14.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]290,[System.Int32]373))
$Button14.Name = [System.String]'Button14'
$Button14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button14.TabIndex = [System.Int32]13
$Button14.Text = [System.String]'Dropbox'
$Button14.UseCompatibleTextRendering = $true
$Button14.UseVisualStyleBackColor = $true
$Button14.add_Click($Button14_Click)
#
#Button15
#
$Button15.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]290,[System.Int32]427))
$Button15.Name = [System.String]'Button15'
$Button15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button15.TabIndex = [System.Int32]14
$Button15.Text = [System.String]'Audacity'
$Button15.UseCompatibleTextRendering = $true
$Button15.UseVisualStyleBackColor = $true
$Button15.add_Click($Button15_Click)
#
#Button16
#
$Button16.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]290,[System.Int32]479))
$Button16.Name = [System.String]'Button16'
$Button16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button16.TabIndex = [System.Int32]15
$Button16.Text = [System.String]'Klite Codecs Mega'
$Button16.UseCompatibleTextRendering = $true
$Button16.UseVisualStyleBackColor = $true
$Button16.add_Click($Button16_Click)
#
#Button17
#
$Button17.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button17.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]501,[System.Int32]104))
$Button17.Name = [System.String]'Button17'
$Button17.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button17.TabIndex = [System.Int32]16
$Button17.Text = [System.String]'Mozilla Firefox'
$Button17.UseCompatibleTextRendering = $true
$Button17.UseVisualStyleBackColor = $true
$Button17.add_Click($Button17_Click)
#
#Button18
#
$Button18.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]501,[System.Int32]157))
$Button18.Name = [System.String]'Button18'
$Button18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button18.TabIndex = [System.Int32]17
$Button18.Text = [System.String]'Microsoft Teams'
$Button18.UseCompatibleTextRendering = $true
$Button18.UseVisualStyleBackColor = $true
$Button18.add_Click($Button18_Click)
#
#Button19
#
$Button19.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button19.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]501,[System.Int32]205))
$Button19.Name = [System.String]'Button19'
$Button19.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button19.TabIndex = [System.Int32]18
$Button19.Text = [System.String]'Button19'
$Button19.UseCompatibleTextRendering = $true
$Button19.UseVisualStyleBackColor = $true
$Button19.add_Click($Button19_Click)
#
#Button20
#
$Button20.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button20.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]501,[System.Int32]257))
$Button20.Name = [System.String]'Button20'
$Button20.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button20.TabIndex = [System.Int32]19
$Button20.Text = [System.String]'Button20'
$Button20.UseCompatibleTextRendering = $true
$Button20.UseVisualStyleBackColor = $true
$Button20.add_Click($Button20_Click)
#
#Button21
#
$Button21.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button21.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]501,[System.Int32]315))
$Button21.Name = [System.String]'Button21'
$Button21.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button21.TabIndex = [System.Int32]20
$Button21.Text = [System.String]'Button21'
$Button21.UseCompatibleTextRendering = $true
$Button21.UseVisualStyleBackColor = $true
$Button21.add_Click($Button21_Click)
#
#Button22
#
$Button22.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button22.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]501,[System.Int32]373))
$Button22.Name = [System.String]'Button22'
$Button22.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button22.TabIndex = [System.Int32]21
$Button22.Text = [System.String]'Button22'
$Button22.UseCompatibleTextRendering = $true
$Button22.UseVisualStyleBackColor = $true
$Button22.add_Click($Button22_Click)
#
#Button23
#
$Button23.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button23.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]501,[System.Int32]427))
$Button23.Name = [System.String]'Button23'
$Button23.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button23.TabIndex = [System.Int32]22
$Button23.Text = [System.String]'Button23'
$Button23.UseCompatibleTextRendering = $true
$Button23.UseVisualStyleBackColor = $true
$Button23.add_Click($Button23_Click)
#
#Button24
#
$Button24.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button24.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]501,[System.Int32]479))
$Button24.Name = [System.String]'Button24'
$Button24.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]34))
$Button24.TabIndex = [System.Int32]23
$Button24.Text = [System.String]'Button24'
$Button24.UseCompatibleTextRendering = $true
$Button24.UseVisualStyleBackColor = $true
$Button24.add_Click($Button24_Click)
#
#Button25
#
$Button25.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button25.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$Button25.Name = [System.String]'Button25'
$Button25.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]48))
$Button25.TabIndex = [System.Int32]24
$Button25.Text = [System.String]'Install Choc'
$Button25.UseCompatibleTextRendering = $true
$Button25.UseVisualStyleBackColor = $true
$Button25.add_Click($Button25_Click)
#
#Button26
#
$Button26.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button26.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]374,[System.Int32]12))
$Button26.Name = [System.String]'Button26'
$Button26.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]363,[System.Int32]48))
$Button26.TabIndex = [System.Int32]26
$Button26.Text = [System.String]'Update Choc'
$Button26.UseCompatibleTextRendering = $true
$Button26.UseVisualStyleBackColor = $true
$Button26.add_Click($Button26_Click)
#
#Label1
#
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]15.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.ForeColor = [System.Drawing.Color]::Silver
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]602))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]577,[System.Int32]36))
$Label1.TabIndex = [System.Int32]25
$Label1.Text = [System.String]'Multi installer by Michael Baker 2021'
$Label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$Label1.UseCompatibleTextRendering = $true
#
#GroupBox1
#
$GroupBox1.Controls.Add($Button28)
$GroupBox1.Controls.Add($Button27)
$GroupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]535))
$GroupBox1.Name = [System.String]'GroupBox1'
$GroupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]577,[System.Int32]64))
$GroupBox1.TabIndex = [System.Int32]27
$GroupBox1.TabStop = $false
$GroupBox1.Text = [System.String]'System Tweeks'
$GroupBox1.UseCompatibleTextRendering = $true
#
#Button27
#
$Button27.BackColor = [System.Drawing.Color]::Silver
$Button27.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$Button27.Name = [System.String]'Button27'
$Button27.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]279,[System.Int32]35))
$Button27.TabIndex = [System.Int32]0
$Button27.Text = [System.String]'System Boost (Remove Bloat)'
$Button27.UseCompatibleTextRendering = $true
$Button27.UseVisualStyleBackColor = $false
$Button27.add_Click($Button27_Click)
#
#Button28
#
$Button28.BackColor = [System.Drawing.Color]::Silver
$Button28.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]295,[System.Int32]20))
$Button28.Name = [System.String]'Button28'
$Button28.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]35))
$Button28.TabIndex = [System.Int32]1
$Button28.Text = [System.String]'Windows Updates (Security only)'
$Button28.UseCompatibleTextRendering = $true
$Button28.UseVisualStyleBackColor = $false
$Button28.add_Click($Button28_Click)
#
#PictureBox1
#
$PictureBox1.ImageLocation = "https://github.com/xmerric/xmdebloat/blob/main/xmerric.png?raw=true"
$PictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]605))
$PictureBox1.Name = [System.String]'PictureBox1'
$PictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]577,[System.Int32]183))
$PictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::CenterImage
$PictureBox1.TabIndex = [System.Int32]28
$PictureBox1.TabStop = $false
$PictureBox1.add_Click($PictureBox1_Click)
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]749,[System.Int32]824))
$Form1.Controls.Add($PictureBox1)
$Form1.Controls.Add($GroupBox1)
$Form1.Controls.Add($Label1)
$Form1.Controls.Add($Button26)
$Form1.Controls.Add($Button25)
$Form1.Controls.Add($Button24)
$Form1.Controls.Add($Button23)
$Form1.Controls.Add($Button22)
$Form1.Controls.Add($Button21)
$Form1.Controls.Add($Button20)
$Form1.Controls.Add($Button19)
$Form1.Controls.Add($Button18)
$Form1.Controls.Add($Button17)
$Form1.Controls.Add($Button16)
$Form1.Controls.Add($Button15)
$Form1.Controls.Add($Button14)
$Form1.Controls.Add($Button13)
$Form1.Controls.Add($Button12)
$Form1.Controls.Add($Button11)
$Form1.Controls.Add($Button10)
$Form1.Controls.Add($Button9)
$Form1.Controls.Add($Button8)
$Form1.Controls.Add($Button7)
$Form1.Controls.Add($Button6)
$Form1.Controls.Add($Button5)
$Form1.Controls.Add($Button4)
$Form1.Controls.Add($Button3)
$Form1.Controls.Add($Button2)
$Form1.Controls.Add($Button1)
$Form1.Text = [System.String]'Michaels Installer'
$Form1.add_Load($Form1_Load)
$GroupBox1.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$PictureBox1).EndInit()
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button1 -Value $Button1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button2 -Value $Button2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button3 -Value $Button3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button4 -Value $Button4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button5 -Value $Button5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button6 -Value $Button6 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button7 -Value $Button7 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button8 -Value $Button8 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button9 -Value $Button9 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button10 -Value $Button10 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button11 -Value $Button11 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button12 -Value $Button12 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button13 -Value $Button13 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button14 -Value $Button14 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button15 -Value $Button15 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button16 -Value $Button16 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button17 -Value $Button17 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button18 -Value $Button18 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button19 -Value $Button19 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button20 -Value $Button20 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button21 -Value $Button21 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button22 -Value $Button22 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button23 -Value $Button23 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button24 -Value $Button24 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button25 -Value $Button25 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button26 -Value $Button26 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name GroupBox1 -Value $GroupBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button28 -Value $Button28 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button27 -Value $Button27 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name PictureBox1 -Value $PictureBox1 -MemberType NoteProperty
}
. InitializeComponent

$Form1.ShowDialog()
