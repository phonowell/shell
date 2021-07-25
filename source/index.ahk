﻿; Generated by Coffee-AHK/0.0.38
global __ci_shell__ := Func("shell_116")
global $ := {}
$.abs := Func("shell_115")
$.add := Func("shell_114")
$.alert := Func("shell_113")
$.beep := Func("shell_111")
$.bind := Func("shell_110")
$.blockInput := Func("shell_109")
$.ceil := Func("shell_108")
$.chunk := Func("shell_107")
$.clearInterval := Func("shell_106")
$.clearTimeout := Func("shell_105")
$.click := Func("shell_104")
$.clone := Func("shell_103")
$.compact := Func("shell_102")
$.concat := Func("shell_101")
global __iDebounce__ := 0
global __tDebounce__ := {}
$.debounce := Func("shell_100")
$.defer := Func("shell_98")
$.delay := Func("shell_96")
$.drop := Func("shell_94")
$.each := Func("shell_93")
class EmitterShellX {
  bus := []
  emit := Func("shell_92").Bind(this)
  off := Func("shell_91").Bind(this)
  on := Func("shell_90").Bind(this)
}
$.emitter := Func("shell_89")
$.eq := Func("shell_88")
$.exit := Func("shell_87")
class FileShellX {
  name := ""
  __New(name) {
    this.name := name
  }
  append := Func("shell_86").Bind(this)
  exist := Func("shell_85").Bind(this)
  delete := Func("shell_84").Bind(this)
  load := Func("shell_83").Bind(this)
  save := Func("shell_82").Bind(this)
}
$.file := Func("shell_81")
$.filter := Func("shell_80")
$.findColor := Func("shell_79")
$.findImage := Func("shell_78")
$.first := Func("shell_77")
$.head := $.first
$.floor := Func("shell_76")
$.formatHotkey := Func("shell_75")
global __formatKeyFormatHotkey__ := Func("shell_74")
global __pickPrefixFormatHotkey__ := Func("shell_73")
$.getColor := Func("shell_72")
$.getPosition := Func("shell_71")
$.getState := Func("shell_70")
$.gt := Func("shell_69")
$.gte := Func("shell_68")
$.i := Func("shell_67")
$.includes := Func("shell_66")
$.info := Func("shell_65")
$.isArray := Func("shell_64")
$.isFunction := Func("shell_63")
$.isNumber := Func("shell_62")
$.isObject := Func("shell_61")
$.isString := Func("shell_60")
$.join := Func("shell_59")
class KeyBindingShellX {
  mapBound := {}
  mapCallback := {}
  add := Func("shell_58").Bind(this)
  fire := Func("shell_57").Bind(this)
  init := Func("shell_56").Bind(this)
  off := Func("shell_54").Bind(this)
  on := Func("shell_53").Bind(this)
  remove := Func("shell_52").Bind(this)
}
global keyBindingShell := new KeyBindingShellX()
$.off := keyBindingShell.remove
$.on := keyBindingShell.add
$.trigger := keyBindingShell.fire
$.keys := Func("shell_51")
$.last := Func("shell_50")
$.length := Func("shell_49")
$.lt := Func("shell_48")
$.lte := Func("shell_47")
$.map := Func("shell_46")
$.mixin := Func("shell_45")
$.mod := Func("shell_44")
$.move := Func("shell_43")
$.noop := Func("shell_42")
$.now := Func("shell_41")
$.nth := Func("shell_40")
global __cacheOnce__ := {}
global __indexOnce__ := 0
$.once := Func("shell_39")
$.open := Func("shell_37")
$.play := Func("shell_36")
$.press := Func("shell_35")
global __formatInputPress__ := Func("shell_34")
global __validateInputPress__ := Func("shell_33")
$.push := Func("shell_32")
$.random := Func("shell_31")
$.range := Func("shell_30")
$.reload := Func("shell_29")
$.replace := Func("shell_28")
$.reverse := Func("shell_27")
$.round := Func("shell_26")
$.setFixed := Func("shell_25")
$.setInterval := Func("shell_24")
$.setTimeout := Func("shell_23")
$.shuffle := Func("shell_22").Bind(__split__)
$.sleep := Func("shell_21")
$.slice := Func("shell_20")
global __pickArgumentSlice__ := Func("shell_19")
$.sort := Func("shell_18")
$.split := Func("shell_17")
$.sum := Func("shell_16")
$.suspend := Func("shell_15")
$.tail := Func("shell_14")
$.take := Func("shell_13")
global __iThrottle__ := 0
global __tThrottle__ := {}
global __tsThrottle__ := {}
$.throttle := Func("shell_12")
$.toLowerCase := Func("shell_9")
$.toLower := $.toLowerCase
$.toString := Func("shell_8")
$.toUpperCase := Func("shell_7")
$.toUpper := $.toUpperCase
$.trim := Func("shell_6")
$.trimEnd := Func("shell_5")
$.trimStart := Func("shell_4")
$.type := Func("shell_3")
$.uniq := Func("shell_2")
$.values := Func("shell_1")
$.VERSION := "0.0.10"
shell_1(input) {
  __listResult__ := []
  for __index_for__, __key__ in $.keys.Call(input) {
    $.push.Call(__listResult__, input[__ci_shell__.Call(__key__)])
  }
  return __listResult__
}
shell_2(list) {
  __hasString__ := false
  for __index_for__, __item__ in list {
    if (($.type.Call(__item__)) == "string") {
      __hasString__ := true
      break
    }
  }
  __string__ := $.join.Call(list, ",")
  if (__hasString__) {
    Sort, __string__, C U D,
  } else {
    Sort, __string__, N U D,
  }
  return $.split.Call(__string__, ",")
}
shell_3(input) {
  if input is Number
    return "number"
  if (IsFunc(input)) {
    return "function"
  }
  if (IsObject(input)) {
    if (input.Count() == input.Length()) {
      if !(input.Length() >= 0) {
        return "function"
      }
      return "array"
    }
    return "object"
  }
  return "string"
}
shell_4(input, omitting := " `t") {
  return LTrim(input, omitting)
}
shell_5(input, omitting := " `t") {
  return RTrim(input, omitting)
}
shell_6(input, omitting := " `t") {
  return Trim(input, omitting)
}
shell_7(input) {
  StringUpper, __result__, input
  return __result__
}
shell_8(input) {
  __type__ := $.type.Call(input)
  if (__type__ == "array") {
    __result__ := ""
    for __index_for__, key in input {
      __result__ := "" . (__result__) . ", " . ($.toString.Call(key)) . ""
    }
    return "[" . ($.trim.Call(__result__, " ,")) . "]"
  } else if (__type__ == "object") {
    __result__ := ""
    for key, value in input {
      __result__ := "" . (__result__) . ", " . (key) . ": " . ($.toString.Call(value)) . ""
    }
    return "{" . ($.trim.Call(__result__, " ,")) . "}"
  }
  return input
}
shell_9(input) {
  StringLower, __result__, input
  return __result__
}
shell_10(callback, index) {
  callback.Call()
  __tsThrottle__[__ci_shell__.Call(index)] := $.now.Call()
}
shell_11(callback, time, index) {
  $.clearTimeout.Call(__tThrottle__[__ci_shell__.Call(index)])
  __tThrottle__[__ci_shell__.Call(index)] := $.setTimeout.Call(Func("shell_10").Bind(callback, index), __tsThrottle__[__ci_shell__.Call(index)] - $.now.Call() + time)
}
shell_12(time, callback) {
  __iThrottle__++
  __tsThrottle__[__ci_shell__.Call(__iThrottle__)] := 0
  return Func("shell_11").Bind(callback, time, __iThrottle__)
}
shell_13(list, count := 1) {
  __len__ := $.length.Call(list)
  if !(__len__) {
    return []
  }
  if !(count >= 0) {
    return []
  }
  if (count >= __len__) {
    count := __len__
  }
  __listNew__ := []
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    if (__i__ >= count) {
      break
    }
    $.push.Call(__listNew__, __item__)
  }
  return __listNew__
}
shell_14(list) {
  return $.drop.Call(list, 1)
}
shell_15(isSuspended := "Toggle") {
  if (isSuspended != "Toggle") {
    if (isSuspended) {
      isSuspended := "On"
    } else {
      isSuspended := "Off"
    }
  }
  Suspend, % isSuspended
}
shell_16(list) {
  __result__ := 0
  for __index_for__, __n__ in list {
    __result__ := __result__ + __n__
  }
  return __result__
}
shell_17(input, delimiter) {
  return StrSplit(input, delimiter)
}
shell_18(list) {
  __hasString__ := false
  for __index_for__, __item__ in list {
    if (($.type.Call(__item__)) == "string") {
      __hasString__ := true
      break
    }
  }
  __string__ := $.join.Call(list, ",")
  if (__hasString__) {
    Sort, __string__, C D,
  } else {
    Sort, __string__, N D,
  }
  return $.split.Call(__string__, ",")
}
shell_19(args) {
  switch $.length.Call(args) {
    case 1: {
      __array__ := [args[1], 0, $.length.Call(args[1])]
      __list__ := __array__[1]
      __start__ := __array__[2]
      __end__ := __array__[3]
    }
    case 2: {
      __array__ := [args[1], args[2], $.length.Call(args[1])]
      __list__ := __array__[1]
      __start__ := __array__[2]
      __end__ := __array__[3]
    }
    case 3: {
      __array__ := args
      __list__ := __array__[1]
      __start__ := __array__[2]
      __end__ := __array__[3]
    }
  }
  return [__list__, __start__, __end__]
}
shell_20(args*) {
  __array__ := __pickArgumentSlice__.Call(args)
  __list__ := __array__[1]
  __start__ := __array__[2]
  __end__ := __array__[3]
  __len__ := $.length.Call(__list__)
  if (__start__ > __len__) {
    __start__ := __len__
  }
  if (__start__ < 0) {
    __start__ := __len__ + __start__
  }
  if (__end__ > __len__) {
    __end__ := __len__
  }
  if (__end__ < 0) {
    __end__ := __len__ + __end__
  }
  __isReverse__ := false
  if (__start__ > __end__) {
    __isReverse__ := true
    __array__ := [__end__, __start__]
    __start__ := __array__[1]
    __end__ := __array__[2]
  }
  __listNew__ := []
  __n__ := 0
  __max__ := __end__ - __start__
  while (__n__ < __max__) {
    $.push.Call(__listNew__, __list__[__ci_shell__.Call(__start__ + __n__)])
    __n__++
  }
  if (__isReverse__) {
    return $.reverse.Call(__listNew__)
  }
  return __listNew__
}
shell_21(time) {
  Sleep, % time
}
shell_22(__split__, list) {
  __string__ := $.join.Call(list, ",")
  Sort, __string__, Random D,
  return __split__.Call(__string__, ",")
}
shell_23(callback, time) {
  callback := $.bind.Call(callback)
  if !($.isNumber.Call(time)) {
    throw Exception("$.setTimeout: invalid type")
  }
  if (time <= 0) {
    time := 1
  }
  SetTimer, % callback, % 0 - time
  return callback
}
shell_24(callback, time) {
  callback := $.bind.Call(callback)
  if !(time > 0) {
    throw Exception("$.setInterval: invalid value")
  }
  SetTimer, % callback, % time
  return callback
}
shell_25(isFixed := "Toggle") {
  if (isFixed != "Toggle") {
    if (isFixed) {
      isFixed := "On"
    } else {
      isFixed := "Off"
    }
  }
  Winset AlwaysOnTop, % isFixed, A
}
shell_26(n) {
  return Round(n)
}
shell_27(list) {
  __len__ := $.length.Call(list)
  __listNew__ := []
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    __listNew__[__ci_shell__.Call(__len__ - 1 - __i__)] := __item__
  }
  for __i__, __item__ in __listNew__ {
    __i__ := __i__ - 1
    list[__ci_shell__.Call(__i__)] := __item__
  }
  return list
}
shell_28(input, searchment, replacement, limit := -1) {
  return StrReplace(input, searchment, replacement, limit)
}
shell_29() {
  Reload
}
shell_30(args*) {
  switch $.length.Call(args) {
    case 1: {
      __array__ := [0, args[1], 1]
      __start__ := __array__[1]
      __end__ := __array__[2]
      __step__ := __array__[3]
    }
    case 2: {
      __array__ := [args[1], args[2], 1]
      __start__ := __array__[1]
      __end__ := __array__[2]
      __step__ := __array__[3]
    }
    case 3: {
      __array__ := args
      __start__ := __array__[1]
      __end__ := __array__[2]
      __step__ := __array__[3]
    }
    default: {
      throw Exception("$.range: invalid arguments")
    }
  }
  if (__start__ == __end__) {
    return [__start__]
  }
  if (__start__ > __end__) {
    return []
  }
  __listResult__ := []
  __n__ := 0
  __max__ := __end__ - __start__
  while (__n__ < __max__) {
    $.push.Call(__listResult__, __start__ + __step__ * __n__)
    __n__++
  }
  return __listResult__
}
shell_31(min := 0, max := 1) {
  Random, __result__, min, max
  return __result__
}
shell_32(list, args*) {
  for __index_for__, __arg__ in args {
    list.Push(__arg__)
  }
  return list
}
shell_33(listInput) {
  if !($.length.Call(listInput)) {
    return false
  }
  __key__ := listInput[1]
  if ($.includes.Call(__key__, "-button")) {
    __key__ := $.replace.Call(__key__, "l-button", "left")
    __key__ := $.replace.Call(__key__, "m-button", "middle")
    __key__ := $.replace.Call(__key__, "r-button", "right")
    $.click.Call(__key__)
    return false
  }
  return true
}
shell_34(listInput) {
  __listKey__ := []
  for __index_for__, __input__ in listInput {
    __ipt__ := $.toLowerCase.Call(__input__)
    __ipt__ := $.replace.Call(__ipt__, " ", "")
    __ipt__ := $.replace.Call(__ipt__, "-", "")
    $.push.Call(__listKey__, ($.split.Call(__ipt__, "+"))*)
  }
  return __listKey__
}
shell_35(listInput*) {
  if !(__validateInputPress__.Call(listInput)) {
    return
  }
  __listKey__ := __formatInputPress__.Call(listInput)
  __listResult__ := []
  __len__ := $.length.Call(__listKey__)
  for __i__, __key__ in __listKey__ {
    __i__ := __i__ - 1
    if (__i__ == __len__ - 1) {
      __listResult__[__ci_shell__.Call(__i__)] := $.split.Call(__key__, ":")
      continue
    }
    if ($.includes.Call(__key__, ":")) {
      __listResult__[__ci_shell__.Call(__i__)] := $.split.Call(__key__, ":")
      __listResult__[__ci_shell__.Call((__len__ - 1) * 2 - __i__)] := $.split.Call(__key__, ":")
    } else {
      __listResult__[__ci_shell__.Call(__i__)] := [__key__, "down"]
      __listResult__[__ci_shell__.Call((__len__ - 1) * 2 - __i__)] := [__key__, "up"]
    }
  }
  for __i__, __it__ in __listResult__ {
    __i__ := __i__ - 1
    if (__it__[1] == "win") {
      __it__[1] := "lwin"
    }
    __listResult__[__ci_shell__.Call(__i__)] := $.trim.Call("" . (__it__[1]) . " " . (__it__[2]) . "")
  }
  __result__ := ""
  for __index_for__, __it__ in __listResult__ {
    __result__ := "" . (__result__) . "{" . (__it__) . "}"
  }
  Send, % __result__
}
shell_36(filename) {
  SoundPlay, % filename
}
shell_37(source) {
  Run, % source
}
shell_38(__i__, callback, args*) {
  if (__cacheOnce__[__ci_shell__.Call(__i__)][1]) {
    return __cacheOnce__[__ci_shell__.Call(__i__)][2]
  }
  __result__ := callback.Call(args*)
  __cacheOnce__[__ci_shell__.Call(__i__)] := [true, __result__]
  return __result__
}
shell_39(callback) {
  __i__ := __indexOnce__
  __indexOnce__++
  __cacheOnce__[__ci_shell__.Call(__i__)] := [false, ""]
  return Func("shell_38").Bind(__i__, callback)
}
shell_40(list, n := 0) {
  if (n >= 0) {
    return list[__ci_shell__.Call(n)]
  } else {
    return list[__ci_shell__.Call(($.length.Call(list)) + n)]
  }
}
shell_41() {
  return A_TickCount
}
shell_42() {
  return
}
shell_43(point := "", speed := 0) {
  MouseMove, point[1], point[2], speed
}
shell_44(dividend, divisor) {
  return Mod(dividend, divisor)
}
shell_45(args*) {
  if !($.length.Call(args)) {
    throw Exception("$.mixin: invalid arguments")
  }
  __result__ := args[1]
  for __index_for__, __item__ in $.tail.Call(args) {
    for __key__, __value__ in __item__ {
      __result__[__ci_shell__.Call(__key__)] := __value__
    }
  }
  return __result__
}
shell_46(list, callback) {
  __listResult__ := []
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    $.push.Call(__listResult__, callback.Call(__item__, __i__))
  }
  return __listResult__
}
shell_47(value, other) {
  return value <= other
}
shell_48(value, other) {
  return value < other
}
shell_49(input) {
  __type__ := $.type.Call(input)
  switch __type__ {
    case "array": {
      return input.Length()
    }
    case "object": {
      return input.Count()
    }
    case "string": {
      return StrLen(input)
    }
    default: {
      throw Exception("$.length: invalid type '" . (__type__) . "'")
    }
  }
}
shell_50(list) {
  return list[__ci_shell__.Call(($.length.Call(list)) - 1)]
}
shell_51(input) {
  __listResult__ := []
  for __key__, __value__ in input {
    $.push.Call(__listResult__, __key__)
  }
  return $.sort.Call(__listResult__)
}
shell_52(this, key) {
  __array__ := $.split.Call(key, ".")
  key := __array__[1]
  __name__ := __array__[2]
  if !(__name__) {
    this.mapCallback[__ci_shell__.Call(key)] := ""
    this.off.Call(key, this.mapBound[__ci_shell__.Call(key)])
    return $
  }
  __listNew__ := []
  for __index_for__, __item__ in this.mapCallback[__ci_shell__.Call(key)] {
    if (__item__[1] == __name__) {
      continue
    }
    $.push.Call(__listNew__, __item__)
  }
  if !($.length.Call(__listNew__)) {
    this.mapCallback[__ci_shell__.Call(key)] := ""
    this.off.Call(key, this.mapBound[__ci_shell__.Call(key)])
    return $
  }
  this.mapCallback[__ci_shell__.Call(key)] := __listNew__
  return $
}
shell_53(this, key, callback) {
  key := $.formatHotkey.Call($.replace.Call(key, ":down", ""))
  Hotkey, % key, % callback, On
  return $
}
shell_54(this, key, callback) {
  key := $.formatHotkey.Call($.replace.Call(key, ":down", ""))
  Hotkey, % key, % callback, Off
  return $
}
shell_55(key, this) {
  this.fire.Call(key)
}
shell_56(this, key) {
  if (this.mapCallback[__ci_shell__.Call(key)]) {
    return $
  }
  this.mapCallback[__ci_shell__.Call(key)] := []
  __fn__ := Func("shell_55").Bind(key, this)
  this.mapBound[__ci_shell__.Call(key)] := __fn__
  this.on.Call(key, __fn__)
}
shell_57(this, key) {
  __array__ := $.split.Call(($.replace.Call(key, ":down", "")), ".")
  key := __array__[1]
  __name__ := __array__[2]
  if !(__name__) {
    for __index_for__, __item__ in this.mapCallback[__ci_shell__.Call(key)] {
      __item__[2].Call()
    }
    return $
  }
  for __index_for__, __item__ in this.mapCallback[__ci_shell__.Call(key)] {
    if !(__item__[1] == __name__) {
      continue
    }
    __item__[2].Call()
  }
  return $
}
shell_58(this, key, callback) {
  __array__ := $.split.Call(key, ".")
  key := __array__[1]
  __name__ := __array__[2]
  this.init.Call(key)
  $.push.Call(this.mapCallback[__ci_shell__.Call(key)], [__name__, callback])
  return $
}
shell_59(list, seperator := "") {
  __result__ := ""
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    if !(__i__) {
      __result__ := __item__
      continue
    }
    __result__ := "" . (__result__) . "" . (seperator) . "" . (__item__) . ""
  }
  return __result__
}
shell_60(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "string") {
    return false
  }
  return true
}
shell_61(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "object") {
    return false
  }
  return true
}
shell_62(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "number") {
    return false
  }
  return true
}
shell_63(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "function") {
    return false
  }
  return true
}
shell_64(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "array") {
    return false
  }
  return true
}
shell_65(message, point := "") {
  if !(message) {
    return message
  }
  if !(point) {
    point := $.getPosition.Call()
  }
  __msg__ := $.toString.Call(message)
  ToolTip, % __msg__, % point[1], % point[2]
  return message
}
shell_66(input, needle) {
  __type__ := $.type.Call(input)
  if (__type__ == "string" || __type__ == "number") {
    return (InStr(input, needle)) > 0
  }
  if (__type__ == "array") {
    for __index_for__, __it__ in input {
      if (__it__ == needle) {
        return true
      }
    }
    return false
  }
  throw Exception("$.includes: invalid type '" . (__type__) . "'")
}
shell_67(message) {
  $.info.Call("[" . ($.now.Call()) . "] " . ($.toString.Call(message)) . "", [0, 0])
  return message
}
shell_68(value, other) {
  return value >= other
}
shell_69(value, other) {
  return value > other
}
shell_70(key) {
  key := $.formatHotkey.Call(key)
  return GetKeyState(key, "P")
}
shell_71() {
  MouseGetPos, __x__, __y__
  return [__x__, __y__]
}
shell_72(point := "") {
  if !(point) {
    point := $.getPosition.Call()
  }
  PixelGetColor, __result__, % point[1], % point[2], RGB
  return __result__
}
shell_73(listKey) {
  if (($.length.Call(listKey)) == 1) {
    return ["", listKey]
  }
  __prefix__ := ""
  __listNew__ := []
  for __index_for__, __key__ in listKey {
    if (__key__ == "alt") {
      __prefix__ := "" . (__prefix__) . "!"
      continue
    }
    if (__key__ == "ctrl") {
      __prefix__ := "" . (__prefix__) . "^"
      continue
    }
    if (__key__ == "shift") {
      __prefix__ := "" . (__prefix__) . "+"
      continue
    }
    if (__key__ == "win") {
      __prefix__ := "" . (__prefix__) . "#"
      continue
    }
    $.push.Call(__listNew__, __key__)
  }
  return [__prefix__, __listNew__]
}
shell_74(key) {
  __listKey__ := []
  __key__ := $.toLowerCase.Call(key)
  __key__ := $.replace.Call(__key__, " ", "")
  __key__ := $.replace.Call(__key__, "-", "")
  $.push.Call(__listKey__, ($.split.Call(__key__, "+"))*)
  return __listKey__
}
shell_75(key) {
  __listKey__ := __formatKeyFormatHotkey__.Call(key)
  __array__ := __pickPrefixFormatHotkey__.Call(__listKey__)
  __prefix__ := __array__[1]
  __listKey__ := __array__[2]
  __result__ := ""
  for __index_for__, __it__ in __listKey__ {
    __result__ := "" . (__result__) . " & " . (__it__) . ""
  }
  return $.replace.Call("" . (__prefix__) . "" . ($.trim.Call(__result__, " &")) . "", ":", " ")
}
shell_76(n) {
  return Floor(n)
}
shell_77(list) {
  return list[1]
}
shell_78(source, start := "", end := "") {
  if !(start) {
    start := [0, 0]
  }
  if !(end) {
    end := [A_ScreenWidth, A_ScreenHeight]
  }
  ImageSearch __x__, __y__, start[1], start[2], end[1], end[2], % A_ScriptDir . "\\\" . source
  return [__x__, __y__]
}
shell_79(color, start := "", end := "", variation := 0) {
  if !(start) {
    start := [0, 0]
  }
  if !(end) {
    end := [A_ScreenWidth, A_ScreenHeight]
  }
  PixelSearch __x__, __y__, start[1], start[2], end[1], end[2], color, variation, Fast RGB
  return [__x__, __y__]
}
shell_80(list, callback) {
  __listResult__ := []
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    if !(callback.Call(__item__, __i__)) {
      continue
    }
    $.push.Call(__listResult__, __item__)
  }
  return __listResult__
}
shell_81(name) {
  return new FileShellX(name)
}
shell_82(this, content) {
  this.delete.Call()
  return this.append.Call(content)
}
shell_83(this) {
  if !(this.exist.Call()) {
    return ""
  }
  FileRead, __result__, % this.name
  return $.replace.Call(__result__, "`r", "")
}
shell_84(this) {
  if !(this.exist.Call()) {
    return this
  }
  FileDelete, % this.name
  return this
}
shell_85(this) {
  if !(FileExist(this.name)) {
    return false
  }
  return true
}
shell_86(this, content) {
  FileAppend, % content, % this.name, UTF-8
  return content
}
shell_87() {
  ExitApp
}
shell_88(value, other) {
  return value == other
}
shell_89() {
  return new EmitterShellX
}
shell_90(this, key, callback) {
  __array__ := $.split.Call(key, ".")
  __type__ := __array__[1]
  __name__ := __array__[2]
  $.push.Call(this.bus, [__type__, __name__, callback])
  return this
}
shell_91(this, key) {
  __array__ := $.split.Call(key, ".")
  __type__ := __array__[1]
  __name__ := __array__[2]
  if !(__type__) {
    this.bus := []
    return this
  }
  if !(__name__) {
    __busNew__ := []
    for __index_for__, __item__ in this.bus {
      if (__item__[1] == __type__) {
        continue
      }
      $.push.Call(__busNew__, __item__)
    }
    this.bus := __busNew__
    return this
  }
  __busNew__ := []
  for __index_for__, __item__ in this.bus {
    if (__item__[1] == __type__ && __item__[2] == __name__) {
      continue
    }
    $.push.Call(__busNew__, __item__)
  }
  this.bus := __busNew__
  return this
}
shell_92(this, key, args*) {
  __array__ := $.split.Call(key, ".")
  __type__ := __array__[1]
  __name__ := __array__[2]
  if !(__type__) {
    return this
  }
  if !(__name__) {
    for __index_for__, __item__ in this.bus {
      if !(__item__[1] == __type__) {
        continue
      }
      __item__[3].Call(args*)
    }
    return this
  }
  for __index_for__, __item__ in this.bus {
    if !(__item__[1] == __type__ && __item__[2] == __name__) {
      continue
    }
    __item__[3].Call(args*)
  }
  return this
}
shell_93(list, callback) {
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    callback.Call(__item__, __i__)
  }
}
shell_94(list, n := 1) {
  __listNew__ := []
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    if !(__i__ >= n) {
      continue
    }
    $.push.Call(__listNew__, __item__)
  }
  return __listNew__
}
shell_95(callback, args) {
  callback.Call(args*)
}
shell_96(callback, time, args*) {
  __timer__ := $.setTimeout.Call(Func("shell_95").Bind(callback, args), time)
  return __timer__
}
shell_97(callback, args) {
  callback.Call(args*)
}
shell_98(callback, args*) {
  return $.delay.Call(Func("shell_97").Bind(callback, args), 1)
}
shell_99(callback, time, index) {
  $.clearTimeout.Call(__tDebounce__[__ci_shell__.Call(index)])
  __tDebounce__[__ci_shell__.Call(index)] := $.setTimeout.Call(callback, time)
}
shell_100(time, callback) {
  __iDebounce__++
  return Func("shell_99").Bind(callback, time, __iDebounce__)
}
shell_101(list, args*) {
  __listNew__ := $.clone.Call(list)
  for __index_for__, __arg__ in args {
    __type__ := $.type.Call(__arg__)
    if (__type__ == "array") {
      for __index_for__, __item__ in __arg__ {
        $.push.Call(__listNew__, __item__)
      }
    } else {
      $.push.Call(__listNew__, __arg__)
    }
  }
  return __listNew__
}
shell_102(list) {
  __listNew__ := []
  for __index_for__, __item__ in list {
    if !(__item__) {
      continue
    }
    $.push.Call(__listNew__, __item__)
  }
  return __listNew__
}
shell_103(input) {
  __type__ := $.type.Call(input)
  if (__type__ == "array") {
    return $.slice.Call(input)
  }
  if (__type__ == "object") {
    __mapNew__ := {}
    for __key__, __value__ in input {
      __mapNew__[__ci_shell__.Call(__key__)] := __value__
    }
    return __mapNew__
  }
  throw Exception("$.clone: invalid type '" . (__type__) . "'")
}
shell_104(key := "left") {
  key := $.replace.Call(key, "-", "")
  key := $.replace.Call(key, ":", " ")
  Click, % key
}
shell_105(callback) {
  if !(callback) {
    return
  }
  SetTimer, % callback, Delete
}
shell_106(callback) {
  if !(callback) {
    return
  }
  SetTimer, % callback, Delete
}
shell_107(list, n := 1) {
  __listNew__ := []
  __i__ := 0
  while (__i__ < ($.length.Call(list)) / n) {
    __listTemp__ := []
    __j__ := 0
    while (__j__ < n) {
      $.push.Call(__listTemp__, list[__ci_shell__.Call(__i__ * n + __j__)])
      __j__++
    }
    $.push.Call(__listNew__, __listTemp__)
    __i__++
  }
  return __listNew__
}
shell_108(n) {
  return Ceil(n)
}
shell_109(block) {
  if (block) {
    BlockInput, On
    return
  }
  BlockInput, Off
}
shell_110(callback, args*) {
  if !(callback.Name) {
    if !($.length.Call(args)) {
      return callback
    }
    throw Exception("$.bind: cannot bind a bound function")
  }
  return callback.Bind(args*)
}
shell_111() {
  SoundBeep
}
shell_112(msg) {
  return $.toString.Call(msg)
}
shell_113(message*) {
  __msg__ := $.join.Call(($.map.Call(message, Func("shell_112"))), ", ")
  MsgBox, % __msg__
}
shell_114(args*) {
  __result__ := 0
  for __index_for__, __arg__ in args {
    __result__ := __result__ + __arg__
  }
  return __result__
}
shell_115(n) {
  return Abs(n)
}
shell_116(input) {
  if input is Number
    return input + 1
  return input
}
