^!d::  ; Control + Alt + D
{
    if WinExist("ahk_exe Discord.exe")
    {
        if WinActive("ahk_exe Discord.exe")
            WinMinimize
        else
        {
            WinMaximize
            WinActivate
        }
    }
    else
    {
        Run "C:\Users\%A_UserName%\AppData\Local\Discord\app.exe"
        WinWait "Discord"
        WinMaximize
        WinActivate
    }
}

^!s::  ; Control + Alt + S
{
    if WinExist("ahk_exe Spotify.exe")
    {
        if WinActive("ahk_exe Spotify.exe")
            WinMinimize
        else
        {
            WinMaximize
            WinActivate
        }
    }
    else
    {
        Run "C:\Users\%A_UserName%\AppData\Roaming\Spotify\Spotify.exe"
        WinWait "ahk_exe Spotify.exe"
        WinMaximize
        WinActivate
    }
}

^!g::  ; Control + Alt + G
{
    ChromePath := "C:\Program Files\Google\Chrome\Application\chrome.exe"
    
    if WinExist("ahk_exe chrome.exe")
    {
        if WinActive("ahk_exe chrome.exe")
            WinMinimize
        else
        {
            WinMaximize
            WinActivate
        }
    }
    else
    {
        Run ChromePath
        WinWait "ahk_exe chrome.exe"
        WinMaximize
        WinActivate
    }
}

^!m::  ; Control + Alt + M to minimize all windows
{
    ; Minimize all windows
    WinMinimizeAll 
}
