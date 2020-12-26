; *************************************************************************************************
; To make this script more user-friendly
; use sublimetext2 with YAML syntax highlighting
; *************************************************************************************************

; # = Window Key
; ! = Alt
; ^ = Ctrl
; + = Shift
; https://www.autohotkey.com/docs/Hotkeys.htm
; ===================================================================================================
; Retrieve the ID/HWND of the active window
; https://www.autohotkey.com/docs/misc/WinTitle.htm
^!M::
	id := WinExist("A")
	MsgBox % id
return

; https://www.autohotkey.com/docs/commands/WinGetClass.htm
^!N::
	WinGetClass, class, A
	MsgBox, The active window's class is "%class%".
return

; https://www.autohotkey.com/docs/commands/WinGetTitle.htm
^!B::
	WinGetTitle, Title, A
	MsgBox, The active window is "%Title%".
return

; ====================================================================================================
; Ouvrir le script AHK avec Notepad
/*
^+A::
	; Send, & 'C:\Program Files\AutoHotkey\AutoHotkey.exe' C:\AHK\MonScript.ahk
	Run, C:\Windows\System32\notepad.exe C:\AHK\MonScript.ahk
return
*/


; ====================================================================================================
^+B::
	Run, C:\Users\Emanresu\AppData\Local\BraveSoftware\Brave-Browser\Application\brave.exe
return


; ====================================================================================================
/*
^+C::	
	if WinExist("ahk_exe chrome.exe") {
		msgbox, "CHROME IF"
		WinActivate ; uses the last found window.
	} else {
		msgbox, "CHROME ELSE"
		Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
	}
return
*/
; https://www.autohotkey.com/docs/misc/WinTitle.htm
^+C::	
	if WinExist("Messenger - Google Chrome") {
		msgbox, "CHROME IF"
		WinActivate ; uses the last found window.
	} else {
		msgbox, "CHROME ELSE"
		Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
	}
return
/*
^+C::	
	Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
return
*/


; ====================================================================================================
; Hibernate computer
^+H::
	if WinExist("ahk_exe powershell.exe") {
		WinActivate ; uses the last found window.
		Send, shutdown /f /h
	}
return


; ====================================================================================================
^+I::
	; Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --incognito https://www.proxysite.com/
	; Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --incognito https://torrentz2.eu/
	; Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --incognito https://torrentz2.is
	; Run, C:\Program Files\Google\Chrome\Application\chrome.exe --incognito https://torrentz2.is
	Run, C:\Program Files\Google\Chrome\Application\chrome.exe --incognito
return


; ====================================================================================================
^+P::
	if WinExist("ahk_exe powershell.exe") {
		WinActivate ; uses the last found window.
		Send, Stop-Process -Force -Name **
	} else {
		; Run, C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Start-Process 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' -verb RunAs
		Run, C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Start-Process 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe' -verb RunAs
	}
return


; ====================================================================================================
^+V::
	Run, C:\Program Files\VideoLAN\VLC\vlc.exe
return


; ====================================================================================================
^+Y::
	Run, C:\Program Files\VideoLAN\VLC\vlc.exe "C:\Users\Emanresu\Music\2019_11_10_Shape of You - Ed Sheeran (Koto cover).wav"
return


; ====================================================================================================
; ====================================================================================================
; H O T S T R I N G S
; ====================================================================================================
; ====================================================================================================
::spfn::stop-process -Force -Name **

::sss::shutdown /s /f /t 0

; ============================== GIT-RELATED ==============================
; OFFICIAL DOCS
; https://git-scm.com/docs
===========================================================================
::ga::git add -u
::gb::git branch
::gc::git checkout
::gd::git diff --staged
::gi::git init
::gl::git log --oneline -n
::gm::git commit -m 
::gp:: git push origin master
::gr::git restore 
::gs::git status

; https://git-scm.com/docs/git-merge
; git merge <source-branch>

; https://git-scm.com/docs/git-rm
; git rm

; ============================== JUNIT-RELATED ==============================
::aaa::// Arrange{enter}{enter}// Act{enter}{enter}// Assert{enter}

; ============================== FIREBASE-RELATED ==============================
::fd::firebase deploy

; ============================== NUXTJS-JS-RELATED ==============================
::rg::npm run build && npm run generate

; ============================== CHOCOLATEY-RELATED ==============================
::ci::choco install --yes --force
::cu::choco upgrade all --yes
::cl::choco list --local

; ============================== MY-CHOCOLATEY-PACKAGES ==============================
; choco install --yes --force 7zip
; choco install --yes --force 7zip.install
; choco install --yes --force audacity
; choco install --yes --force autohotkey
; choco install --yes --force autohotkey.install
; choco install --yes --force bleachbit
; choco install --yes --force bleachbit.install
; choco install --yes --force brave
; choco install --yes --force ccleaner
; choco install --yes --force cpu-z
; choco install --yes --force cpu-z.install
; choco install --yes --force curl
; choco install --yes --force DotNet4.5
; choco install --yes --force foxitreader
; choco install --yes --force git
; choco install --yes --force git.install
; choco install --yes --force github-desktop
; choco install --yes --force GoogleChrome
; choco install --yes --force gradle
; choco install --yes --force greenshot
; choco install --yes --force intellijidea-community
; choco install --yes --force intellijidea-ultimate
; choco install --yes --force keepass
; choco install --yes --force keepass.install
; choco install --yes --force mpc-hc
; choco install --yes --force nodejs
; choco install --yes --force nodejs.install
; choco install --yes --force notepadplusplus
; choco install --yes --force notepadplusplus.install
; choco install --yes --force openshot
; choco install --yes --force postman
; choco install --yes --force python
; choco install --yes --force python3
; choco install --yes --force qbittorrent
; choco install --yes --force revo-uninstaller
; choco install --yes --force rufus
; choco install --yes --force sandboxie
; choco install --yes --force sourcetree
; choco install --yes --force speccy
; choco install --yes --force sublimetext2
; choco install --yes --force teracopy
; choco install --yes --force treesizefree
; choco install --yes --force unchecky
; choco install --yes --force vcredist-all
; choco install --yes --force vlc
; choco install --yes --force wireshark
