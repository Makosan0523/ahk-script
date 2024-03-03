PC_SHUTDOWN:=1
PC_REBOOT:=2

showWindow(winTitle,path){
    if WinExist(winTitle)
        WinActivate
    else
        Run path
}

;キーリマップ
Delete:: Shutdown PC_SHUTDOWN
Insert:: Shutdown PC_REBOOT
Pause:: Send "^+{Esc}"
Enter:: Send "{Delete}"
sc079:: Send "{Space}"
Space:: Send "{Enter}"
sc029:: Send "#{Tab}"

;設定しないとなぜか反応しない
^Space:: Send "^{Space}"

;Linuxのオマージュ
Space & h:: Send "{Left}"
Space & j:: Send "{Down}"
Space & k:: Send "{Up}"
Space & l:: Send "{Right}"
Space & t:: Send "!{Left}"
Space & ]:: Send "!{Right}"

;ショートカットキーの割り当て
Space & 1:: Send "{F1}"
Space & 2:: Send "{F2}"
Space & 3:: Send "{F3}"
Space & 4:: Send "{F4}"
Space & 5:: Send "{F5}"
Space & 6:: Send "{F6}"
Space & 7:: Send "{F7}"
Space & 8:: Send "{F8}"
Space & 9:: Send "{F9}"
Space & 0:: Send "{F10}"
Space & ^:: Send "{F11}"
Space & \:: Send "{F12}"
Space & sc027:: WinMaximize "A"
Space & -:: WinMinimize "A"
Space & Tab:: Send "!{Tab}"
Space & v:: Send "#{v}"

;ランチャー
Space & a:: showWindow("Notion","C:\Users\i2211408\AppData\Local\Programs\Notion\Notion.exe")
Space & b:: showWindow("Vivaldi","C:\Users\i2211408\AppData\Local\Vivaldi\Application\vivaldi.exe")
Space & c:: showWindow("Microsoft Teams","C:\Users\i2211408\AppData\Local\Microsoft\Teams\current\Teams.exe")
Space & d:: showWindow("Inkscape","C:\Program Files\Inkscape\bin\inkscape.exe")
Space & e:: showWindow("Visual Studio Code","C:\Users\i2211408\AppData\Local\Programs\Microsoft VS Code\Code.exe")
Space & f:: showWindow("ドキュメント",A_MyDocuments)
Space & g:: showWindow("Unity Hub","C:\Users\i2211408\Unity Hub\Unity Hub.exe")
Space & m:: showWindow("Blender","C:\Program Files\Blender Foundation\Blender 3.6\blender-launcher.exe")
Space & o:: showWindow("i2211408@mako","C:\WINDOWS\system32\wsl.exe -d Ubuntu")
Space & p:: showWindow("GIMP (GNU Image Manipulation Program)","C:\Users\i2211408\AppData\Local\Programs\GIMP 2\bin\gimp-2.10.exe")
Space & s:: showWindow("LINE","C:\Users\i2211408\AppData\Local\LINE\bin\LineLauncher.exe")
Space & u:: showWindow("Figma","C:\Users\i2211408\AppData\Local\Figma\app-116.15.15\Figma.exe")
