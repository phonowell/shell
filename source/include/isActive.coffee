# isActive(process: string): boolean
$.isActive = (process) -> return WinActive "ahk_exe #{process}"