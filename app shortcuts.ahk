; Ensure you are using AHK v2 for this syntax

^!d::
{
    if WinExist("ahk_exe Discord.exe")
    {
        if WinActive("ahk_exe Discord.exe")
        {
            WinMinimize
        }
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

^!s::
{
    if WinExist("ahk_exe Spotify.exe")
    {
        if WinActive("ahk_exe Spotify.exe")
        {
            WinMinimize
        }
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

^!g::
{
    ChromePath := "C:\Program Files\Google\Chrome\Application\chrome.exe"
    
    if WinExist("ahk_exe chrome.exe")
    {
        if WinActive("ahk_exe chrome.exe")
        {
            WinMinimize
        }
        else
        {
            ; Use WinMaximize instead of Send {F11} for "windowed full screen"
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
