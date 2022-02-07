# isActive(target: string): boolean
$.isActive = (target) -> return WinActive "ahk_exe #{target}"