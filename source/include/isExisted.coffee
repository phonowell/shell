# isExisted(process): boolean
$.isExisted = (process) -> return WinExist "ahk_exe #{process}"