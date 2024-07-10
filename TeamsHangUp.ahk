#Requires AutoHotkey v2.0
#SingleInstance Force

TraySetIcon("C:\scripts\end-call.ico")

; Define the hotkey (Ctrl+Alt+z)
^!z::
{
global
    ; Have to match based on (External) text in the dialer
    WinTitle := "(External)"

    ; Activate the specified window
    if WinExist(WinTitle)
    {
        ; Make the window active
        WinActivate()
        ; Send Ctrl+Shift+H to the active window
        Send("^+h")
    }
    else
    {
        
    }
return
}
