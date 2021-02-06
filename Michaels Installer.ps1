

$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
$Ask = 'Do you want to run this as an Administrator?
        Select "Yes" to Run as an Administrator
        Select "No" to not run this as an Administrator
        
        Select "Cancel" to stop the script.'

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    $Prompt = [System.Windows.MessageBox]::Show($Ask, "Run as an Administrator or not?", $Button, $ErrorIco) 
    Switch ($Prompt) {
        #Installer running
        Yes {
            Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
            Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
            Exit
        }
        No {
            Break
        }
    }
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
    Write-Host "Installing 7-Zip Compression Tool"
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
    Write-Host "Ccleaner"
    choco install ccleaner -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button10_Click = ({ 
    Write-Host "Java Runtime"
    choco install javaruntime -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button11_Click = ({ 
    Write-Host "Gimp Photo Edit"
    choco install gimp -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button12_Click = ({ 
    Write-Host "Filezilla FTP"
    choco install filezilla -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button13_Click = ({ 
    Write-Host "Putty"
    choco install putty -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button14_Click = ({ 
    Write-Host "Dropbox"
    choco install dropbox -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button15_Click = ({ 
    Write-Host "Audacity"
    choco install audacity -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button16_Click = ({ 
    Write-Host "Klite Codecs Mega"
    choco install k-litecodecpackmega -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

})
$Button17_Click = {Write-Host "Blank"
}
$Button18_Click = {Write-Host "Blank"
}
$Button19_Click = {Write-Host "Blank"
}
$Button20_Click = {Write-Host "Blank"
}
$Button21_Click = {Write-Host "Blank"
}
$Button22_Click = {Write-Host "Blank"
}
$Button23_Click = {Write-Host "Blank"
}
$Button24_Click = {Write-Host "Blank"
}
$Button25_Click = ({ 
    Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
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
[System.Windows.Forms.Label]$Label1 = $null
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
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
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
$Button17.Text = [System.String]'Button17'
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
$Button18.Text = [System.String]'Button18'
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
$Button25.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]725,[System.Int32]48))
$Button25.TabIndex = [System.Int32]24
$Button25.Text = [System.String]'Install Choc'
$Button25.UseCompatibleTextRendering = $true
$Button25.UseVisualStyleBackColor = $true
$Button25.add_Click($Button25_Click)
#
#Label1
#
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]15.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.ForeColor = [System.Drawing.Color]::Silver
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]83,[System.Int32]540))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]577,[System.Int32]36))
$Label1.TabIndex = [System.Int32]25
$Label1.Text = [System.String]'Multi installer by Michael Baker 2021'
$Label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$Label1.UseCompatibleTextRendering = $true
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]749,[System.Int32]586))
$Form1.Controls.Add($Label1)
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
}
. InitializeComponent

$Form1.ShowDialog()