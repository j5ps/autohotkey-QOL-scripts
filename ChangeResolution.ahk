SendMode Input  
SetWorkingDir %A_ScriptDir%  

Resolution1 := "1920x1080"
Resolution2 := "1440x1080"
Resolution3 := "800x600"

^!1::ChangeResolution(Resolution1)
^!2::ChangeResolution(Resolution2)
^!3::ChangeResolution(Resolution3)

ChangeResolution(res) {
    ; Split the resolution into width and height
    StringSplit, resArray, res, x
    width := resArray1
    height := resArray2

    Run, QRes.exe /x %width% /y %height%, , Hide
}

Return
