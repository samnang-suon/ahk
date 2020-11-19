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
::gm::git commit -m 
::gn::git log -n
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
