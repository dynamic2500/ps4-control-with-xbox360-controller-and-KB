# Manual GUIDE
Using Xbox360 Controller and Keyboard/Mouse to control remote play PS4

# Automatic Install (Windows 10 or PowerShell 5 only)
- Download installscript.ps1
- Open PowerShell Console (AS ADMINISTRATOR)
- cd to installscripts.ps1 folder you downloaded
- run .\installscripts.ps1

# Manual Download and Install
PLAY PS4 GAMES BY KEYBOARD/MOUSE OR XBOX360 CONTROLLER GUIDE
- Download Follow Tools:
	+ Virtual Controller (Only Need for KB/Mouse): https://nchc.dl.sourceforge.net/project/vjoy-controller/Virtual%20Controller%20v1051%20Setup.exe
	+ VDX (the tool from Vigem): https://downloads.vigem.org/archive/VDX_x86_x64_latest.zip
	+ MS Xbox360 assistant tools: http://download.microsoft.com/download/6/9/4/69446ACF-E625-4CCF-8F56-58B589934CD3/Xbox360_64Eng.exe
	+ PS Remote play: https://remoteplay.dl.playstation.net/remoteplay/module/win/RemotePlayInstaller.exe

# [For only using XBox360 Controller]
- Installation Manual:
	+ Install PS Remote Play
	+ Install MS Xbox360 assistant tools
	+ Install Vigem Bus, follow this guide from Vigem Team: https://github.com/nefarius/ViGEm/wiki/Driver-Installation
- Run
	+ Configure PS remote play as follow link: https://remoteplay.dl.playstation.net/remoteplay/lang/en/index.html
	+ Plug XBox360 Controller to PC (Wire or Wireless)
	+ Waiting for your PC install driver
	+ Go to Controll Panel/Devices and Printer to make sure your Controller is connected as well
	+ Unzip VDX zip file (you downloaded above)
	+ Run (As Administrator) the exe file which is compatible with your Windows Platform (x86/x64)
	+ Choose emulation type to DualShock 4 Controller and click Connect in Action Column
	+ Run PS remote Play
	+ In PS remote play windows, choose settings (left-bottom corner) and set Resolution to Low and FrameRate to Standard. This setting will make sure your control signal is not affected when you run in slow connection
	+ At now, it's done :) . Enjoy PS4 by your XBox Controller
	
# [For KB/Mouse]
- This idea is using Virutual Controller software to Emulate XBox360 Controller botton and stick by KB and Mouse
- Installation Manual:
	+ Install Virtual Controller
	+ Install PS Remote Play
	+ Install MS Xbox360 assistant tools
	+ Install Vigem Bus, follow this guide from Vigem Team: https://github.com/nefarius/ViGEm/wiki/Driver-Installation
- Run
	+ Configure PS remote play as follow link: https://remoteplay.dl.playstation.net/remoteplay/lang/en/index.html
	+ Run Virtual Controller (As Administrator)
	+ Choose Options
		+ in input tab/Mouse: click Settings and tick enabled, locked
    
    + ![image](https://user-images.githubusercontent.com/25785573/36011721-d43af6d6-0d8b-11e8-80c9-8f0338568b36.png)
		+ in output tab/vXBox: 
			+ Click Settings
			+ Tick Enabled
			+ click install driver (wait a moment)
			+ in Devices group, click Plug In
    + ![image](https://user-images.githubusercontent.com/25785573/36011819-8ec90a06-0d8c-11e8-9938-305dc72d9160.png)
			
	+ Choose Controls
		+ Download pre-settings i set
		+ open/import settings to application
		+ Close windows and click save 
    + ![image](https://user-images.githubusercontent.com/25785573/36012113-750ecaae-0d8e-11e8-9ed8-ea201b061a3e.png)
	+ Go to Controll Panel/Devices and Printer to make sure your Controller is connected as well
	+ Unzip VDX zip file (you downloaded above)
	+ Run (As Administrator) the exe file which is compatible with your Windows Platform (x86/x64)
	+ Choose emulation type to DualShock 4 Controller and click Connect in Action Column
	+ Run PS remote Play
	+ In PS remote play windows, choose settings (left-bottom corner) and set Resolution to Low and FrameRate to Standard. This setting will make sure your control signal is not affected when you run in slow connection
	+ At now, it's done :) . Enjoy PS4 by your KB and Mouse
