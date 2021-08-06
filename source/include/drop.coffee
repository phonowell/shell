# drop<T>(list: T[], n = 1): T[]
$.drop = (list, n = 1) -> return $.filter list, (_it, i) -> return i >= n