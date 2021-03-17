﻿; Generated by Coffee-AHK/0.0.37
; Generated by Coffee-AHK/0.0.37
global __ci_shell__ := Func("shell_116")
global $ := {}
$.abs := Func("shell_115")
$.add := Func("shell_114")
$.alert := Func("shell_113").Bind(msg)
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
    __vt__.Call("file.constructor", name, "string")
    this.name := name
  }
  append := Func("shell_86").Bind(this)
  exist := Func("shell_85").Bind(this)
  delete := Func("shell_84").Bind(this)
  load := Func("shell_83").Bind(this)
  save := Func("shell_82").Bind(this)
}
$.file := Func("shell_81")
$.findColor := Func("shell_80")
$.findImage := Func("shell_79")
$.first := Func("shell_78")
$.head := $.first
$.floor := Func("shell_77")
$.formatHotkey := Func("shell_76")
global __formatKeyFormatHotkey__ := Func("shell_75")
global __pickPrefixFormatHotkey__ := Func("shell_74")
$.getColor := Func("shell_73")
$.getPosition := Func("shell_72")
$.getState := Func("shell_71")
$.gt := Func("shell_70")
$.gte := Func("shell_69")
$.i := Func("shell_68")
$.includes := Func("shell_67")
$.info := Func("shell_66")
$.isArray := Func("shell_65")
$.isFunction := Func("shell_64")
$.isNumber := Func("shell_63")
$.isObject := Func("shell_62")
$.isString := Func("shell_61")
$.join := Func("shell_60")
class KeyBindingShellX {
  mapBound := {}
  mapCallback := {}
  add := Func("shell_59").Bind(this)
  fire := Func("shell_58").Bind(this)
  init := Func("shell_57").Bind(this)
  off := Func("shell_55").Bind(this)
  on := Func("shell_54").Bind(this)
  remove := Func("shell_53").Bind(this)
}
global keyBindingShell := new KeyBindingShellX()
$.off := keyBindingShell.remove
$.on := keyBindingShell.add
$.trigger := keyBindingShell.fire
$.keys := Func("shell_52")
$.last := Func("shell_51")
$.length := Func("shell_50")
$.lt := Func("shell_49")
$.lte := Func("shell_48")
$.map := Func("shell_47")
$.mixin := Func("shell_46")
$.mod := Func("shell_45")
$.move := Func("shell_44")
$.noop := Func("shell_43")
$.now := Func("shell_42")
$.nth := Func("shell_41")
global __cacheOnce__ := {}
global __indexOnce__ := 0
$.once := Func("shell_40").Bind(args)
$.open := Func("shell_38")
$.play := Func("shell_37")
$.press := Func("shell_36")
global __formatInputPress__ := Func("shell_35")
global __validateInputPress__ := Func("shell_34")
$.push := Func("shell_33")
$.random := Func("shell_32")
$.range := Func("shell_31")
$.reload := Func("shell_30")
$.replace := Func("shell_29")
$.reverse := Func("shell_28")
$.round := Func("shell_27")
$.setFixed := Func("shell_26")
$.setInterval := Func("shell_25")
$.setTimeout := Func("shell_24")
$.shuffle := Func("shell_23").Bind(__split__)
$.sleep := Func("shell_22")
$.slice := Func("shell_21")
global __pickArgumentSlice__ := Func("shell_20")
$.sort := Func("shell_19")
$.split := Func("shell_18")
$.sum := Func("shell_17")
$.suspend := Func("shell_16")
$.tail := Func("shell_15")
$.take := Func("shell_14")
global __iThrottle__ := 0
global __tThrottle__ := {}
global __tsThrottle__ := {}
$.throttle := Func("shell_13")
$.toLowerCase := Func("shell_10")
$.toLower := $.toLowerCase
$.toString := Func("shell_9")
$.toUpperCase := Func("shell_8")
$.toUpper := $.toUpperCase
$.trim := Func("shell_7")
$.trimEnd := Func("shell_6")
$.trimStart := Func("shell_5")
$.type := Func("shell_4")
$.uniq := Func("shell_3")
global __vt__ := Func("shell_2")
$.values := Func("shell_1")
$.VERSION := "0.0.8"
shell_1(input) {
  __vt__.Call("values", input, "object")
  __listResult__ := []
  for __index_for__, __key__ in $.keys.Call(input) {
    $.push.Call(__listResult__, input[__ci_shell__.Call(__key__)])
  }
  return __listResult__
}
shell_2(name, target, type*) {
  __type__ := $.type.Call(target)
  if !($.includes.Call(type, __type__)) {
    throw Exception("$." . (name) . ": invalid type '" . (__type__) . "'")
  }
}
shell_3(list) {
  __vt__.Call("uniq", list, "array")
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
shell_4(input) {
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
shell_5(input, omitting := " `t") {
  return LTrim(input, omitting)
}
shell_6(input, omitting := " `t") {
  return RTrim(input, omitting)
}
shell_7(input, omitting := " `t") {
  return Trim(input, omitting)
}
shell_8(input) {
  StringUpper, __result__, input
  return __result__
}
shell_9(input) {
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
shell_10(input) {
  StringLower, __result__, input
  return __result__
}
shell_11(callback, index) {
  callback.Call()
  __tsThrottle__[__ci_shell__.Call(index)] := $.now.Call()
}
shell_12(callback, time, index) {
  $.clearTimeout.Call(__tThrottle__[__ci_shell__.Call(index)])
  __tThrottle__[__ci_shell__.Call(index)] := $.setTimeout.Call(Func("shell_11").Bind(callback, index), __tsThrottle__[__ci_shell__.Call(index)] - $.now.Call() + time)
}
shell_13(time, callback) {
  __vt__.Call("throttle", time, "number")
  __vt__.Call("throttle", callback, "function")
  __iThrottle__++
  __tsThrottle__[__ci_shell__.Call(__iThrottle__)] := 0
  return Func("shell_12").Bind(callback, time, __iThrottle__)
}
shell_14(list, count := 1) {
  __vt__.Call("take", list, "array")
  __vt__.Call("take", count, "number")
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
shell_15(list) {
  __vt__.Call("tail", list, "array")
  return $.drop.Call(list, 1)
}
shell_16(isSuspended := "Toggle") {
  if (isSuspended != "Toggle") {
    if (isSuspended) {
      isSuspended := "On"
    } else {
      isSuspended := "Off"
    }
  }
  Suspend, % isSuspended
}
shell_17(list) {
  __vt__.Call("sum", list, "array")
  __result__ := 0
  for __index_for__, __n__ in list {
    __result__ := __result__ + __n__
  }
  return __result__
}
shell_18(input, delimiter) {
  return StrSplit(input, delimiter)
}
shell_19(list) {
  __vt__.Call("sort", list, "array")
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
shell_20(args) {
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
  __vt__.Call("slice", __list__, "array")
  __vt__.Call("slice", __start__, "number")
  __vt__.Call("slice", __end__, "number")
  return [__list__, __start__, __end__]
}
shell_21(args*) {
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
shell_22(time) {
  __vt__.Call("sleep", time, "number")
  Sleep, % time
}
shell_23(__split__, list) {
  __vt__.Call("shuffle", list, "array")
  __string__ := $.join.Call(list, ",")
  Sort, __string__, Random D,
  return __split__.Call(__string__, ",")
}
shell_24(callback, time) {
  __vt__.Call("setTimeout", callback, "function")
  __vt__.Call("setTimeout", time, "number")
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
shell_25(callback, time) {
  __vt__.Call("setInterval", callback, "function")
  __vt__.Call("setInterval", time, "number")
  callback := $.bind.Call(callback)
  if !(time > 0) {
    throw Exception("$.setInterval: invalid value")
  }
  SetTimer, % callback, % time
  return callback
}
shell_26(isFixed := "Toggle") {
  if (isFixed != "Toggle") {
    if (isFixed) {
      isFixed := "On"
    } else {
      isFixed := "Off"
    }
  }
  Winset AlwaysOnTop, % isFixed, A
}
shell_27(n) {
  __vt__.Call("round", n, "number")
  return Round(n)
}
shell_28(list) {
  __vt__.Call("reverse", list, "array")
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
shell_29(input, searchment, replacement, limit := -1) {
  return StrReplace(input, searchment, replacement, limit)
}
shell_30() {
  Reload
}
shell_31(args*) {
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
  __vt__.Call("range", __start__, "number")
  __vt__.Call("range", __end__, "number")
  __vt__.Call("range", __step__, "number")
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
shell_32(min := 0, max := 1) {
  __vt__.Call("random", min, "number")
  __vt__.Call("random", max, "number")
  Random, __result__, min, max
  return __result__
}
shell_33(list, args*) {
  __vt__.Call("push", list, "array")
  for __index_for__, __arg__ in args {
    list.Push(__arg__)
  }
  return list
}
shell_34(listInput) {
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
shell_35(listInput) {
  __listKey__ := []
  for __index_for__, __input__ in listInput {
    __ipt__ := $.toLowerCase.Call(__input__)
    __ipt__ := $.replace.Call(__ipt__, " ", "")
    __ipt__ := $.replace.Call(__ipt__, "-", "")
    $.push.Call(__listKey__, ($.split.Call(__ipt__, "+"))*)
  }
  return __listKey__
}
shell_36(listInput*) {
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
shell_37(filename) {
  __vt__.Call("play", filename, "string")
  SoundPlay, % filename
}
shell_38(source) {
  __vt__.Call("open", source, "string")
  Run, % source
}
shell_39(__i__, callback, args*) {
  if (__cacheOnce__[__ci_shell__.Call(__i__)][1]) {
    return __cacheOnce__[__ci_shell__.Call(__i__)][2]
  }
  __result__ := callback.Call(args*)
  __cacheOnce__[__ci_shell__.Call(__i__)] := [true, __result__]
  return __result__
}
shell_40(args, callback) {
  __vt__.Call("once", callback, "function")
  __i__ := __indexOnce__
  __indexOnce__++
  __cacheOnce__[__ci_shell__.Call(__i__)] := [false, ""]
  return Func("shell_39").Bind(__i__, callback)
}
shell_41(list, n := 0) {
  __vt__.Call("nth", list, "array")
  __vt__.Call("nth", n, "number")
  if (n >= 0) {
    return list[__ci_shell__.Call(n)]
  } else {
    return list[__ci_shell__.Call(($.length.Call(list)) + n)]
  }
}
shell_42() {
  return A_TickCount
}
shell_43() {
  return
}
shell_44(point := "", speed := 0) {
  __vt__.Call("move", point, "array")
  __vt__.Call("move", speed, "number")
  MouseMove, point[1], point[2], speed
}
shell_45(dividend, divisor) {
  __vt__.Call("mod", dividend, "number")
  __vt__.Call("mod", divisor, "number")
  return Mod(dividend, divisor)
}
shell_46(args*) {
  switch $.length.Call(args) {
    case 1: {
      __array__ := [{}, args[1]]
      __target__ := __array__[1]
      __source__ := __array__[2]
    }
    case 2: {
      __array__ := args
      __target__ := __array__[1]
      __source__ := __array__[2]
    }
    default: {
      throw Exception("$.mixin: invalid arguments")
    }
  }
  __vt__.Call("mixin", __target__, "object")
  __vt__.Call("mixin", __source__, "object")
  for __key__, __value__ in __source__ {
    __target__[__ci_shell__.Call(__key__)] := __value__
  }
  return __target__
}
shell_47(list, callback) {
  __vt__.Call("map", list, "array")
  __vt__.Call("map", callback, "function")
  __listResult__ := []
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    $.push.Call(__listResult__, callback.Call(__item__, __i__))
  }
  return __listResult__
}
shell_48(value, other) {
  return value <= other
}
shell_49(value, other) {
  return value < other
}
shell_50(input) {
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
shell_51(list) {
  __vt__.Call("last", list, "array")
  return list[__ci_shell__.Call(($.length.Call(list)) - 1)]
}
shell_52(input) {
  __vt__.Call("keys", input, "object")
  __listResult__ := []
  for __key__, __value__ in input {
    $.push.Call(__listResult__, __key__)
  }
  return $.sort.Call(__listResult__)
}
shell_53(this, key) {
  __vt__.Call("keyBinding.remove", key, "string", "number")
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
shell_54(this, key, callback) {
  __vt__.Call("keyBinding.on", key, "string", "number")
  __vt__.Call("keyBinding.on", callback, "function")
  key := $.replace.Call(($.formatHotkey.Call(key)), " down", "")
  Hotkey, % key, % callback, On
  return $
}
shell_55(this, key, callback) {
  __vt__.Call("keyBinding.off", key, "string", "number")
  __vt__.Call("keyBinding.off", key, callback, "function")
  key := $.replace.Call(($.formatHotkey.Call(key)), " down", "")
  Hotkey, % key, % callback, Off
  return $
}
shell_56(key, this) {
  this.fire.Call(key)
}
shell_57(this, key) {
  __vt__.Call("keyBinding.init", key, "string", "number")
  if (this.mapCallback[__ci_shell__.Call(key)]) {
    return $
  }
  this.mapCallback[__ci_shell__.Call(key)] := []
  __fn__ := Func("shell_56").Bind(key, this)
  this.mapBound[__ci_shell__.Call(key)] := __fn__
  this.on.Call(key, __fn__)
}
shell_58(this, key) {
  __vt__.Call("keyBinding.fire", key, "string", "number")
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
shell_59(this, key, callback) {
  __vt__.Call("keyBinding.add", key, "string", "number")
  __vt__.Call("keyBinding.add", callback, "function")
  __array__ := $.split.Call(key, ".")
  key := __array__[1]
  __name__ := __array__[2]
  this.init.Call(key)
  $.push.Call(this.mapCallback[__ci_shell__.Call(key)], [__name__, callback])
  return $
}
shell_60(list, seperator := "") {
  __vt__.Call("join", list, "array")
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
shell_61(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "string") {
    return false
  }
  return true
}
shell_62(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "object") {
    return false
  }
  return true
}
shell_63(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "number") {
    return false
  }
  return true
}
shell_64(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "function") {
    return false
  }
  return true
}
shell_65(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "array") {
    return false
  }
  return true
}
shell_66(message, point := "") {
  if !(message) {
    return message
  }
  if !(point) {
    point := $.getPosition.Call()
  }
  __vt__.Call("info", point, "array")
  __msg__ := $.toString.Call(message)
  ToolTip, % __msg__, % point[1], % point[2]
  return message
}
shell_67(input, needle) {
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
shell_68(message) {
  $.info.Call("[" . ($.now.Call()) . "] " . ($.toString.Call(message)) . "", [0, 0])
  return message
}
shell_69(value, other) {
  return value >= other
}
shell_70(value, other) {
  return value > other
}
shell_71(key) {
  key := $.formatHotkey.Call(key)
  return GetKeyState(key, "P")
}
shell_72() {
  MouseGetPos, __x__, __y__
  return [__x__, __y__]
}
shell_73(point := "") {
  if !(point) {
    point := $.getPosition.Call()
  }
  __vt__.Call("getColor", point, "array")
  PixelGetColor, __result__, % point[1], % point[2], RGB
  return __result__
}
shell_74(listKey) {
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
shell_75(key) {
  __listKey__ := []
  __key__ := $.toLowerCase.Call(key)
  __key__ := $.replace.Call(__key__, " ", "")
  __key__ := $.replace.Call(__key__, "-", "")
  $.push.Call(__listKey__, ($.split.Call(__key__, "+"))*)
  return __listKey__
}
shell_76(key) {
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
shell_77(n) {
  __vt__.Call("floor", n, "number")
  return Floor(n)
}
shell_78(list) {
  __vt__.Call("first", list, "array")
  return list[1]
}
shell_79(source, start := "", end := "") {
  if !(start) {
    start := [0, 0]
  }
  if !(end) {
    end := [A_ScreenWidth, A_ScreenHeight]
  }
  ImageSearch __x__, __y__, start[1], start[2], end[1], end[2], % A_ScriptDir . "\\\" . source
  return [__x__, __y__]
}
shell_80(color, start := "", end := "", variation := 0) {
  if !(start) {
    start := [0, 0]
  }
  if !(end) {
    end := [A_ScreenWidth, A_ScreenHeight]
  }
  PixelSearch __x__, __y__, start[1], start[2], end[1], end[2], color, variation, Fast RGB
  return [__x__, __y__]
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
  __vt__.Call("emitter.on", key, "string")
  __vt__.Call("emitter.on", callback, "function")
  __array__ := $.split.Call(key, ".")
  __type__ := __array__[1]
  __name__ := __array__[2]
  $.push.Call(this.bus, [__type__, __name__, callback])
  return this
}
shell_91(this, key) {
  __vt__.Call("emitter.off", key, "string")
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
  __vt__.Call("emitter.emit", key, "string")
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
  __vt__.Call("each", list, "array")
  __vt__.Call("each", callback, "function")
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    callback.Call(__item__, __i__)
  }
}
shell_94(list, n := 1) {
  __vt__.Call("drop", list, "array")
  __vt__.Call("drop", n, "number")
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
  __vt__.Call("delay", callback, "function")
  __vt__.Call("delay", time, "number")
  __timer__ := $.setTimeout.Call(Func("shell_95").Bind(callback, args), time)
  return __timer__
}
shell_97(callback, args) {
  callback.Call(args*)
}
shell_98(callback, args*) {
  __vt__.Call("defer", callback, "function")
  return $.delay.Call(Func("shell_97").Bind(callback, args), 1)
}
shell_99(callback, time, index) {
  $.clearTimeout.Call(__tDebounce__[__ci_shell__.Call(index)])
  __tDebounce__[__ci_shell__.Call(index)] := $.setTimeout.Call(callback, time)
}
shell_100(time, callback) {
  __vt__.Call("debounce", time, "number")
  __vt__.Call("debounce", callback, "function")
  __iDebounce__++
  return Func("shell_99").Bind(callback, time, __iDebounce__)
}
shell_101(list, args*) {
  __vt__.Call("concat", list, "array")
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
  __vt__.Call("compact", list, "array")
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
  __vt__.Call("chunk", list, "array")
  __vt__.Call("chunk", n, "number")
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
  __vt__.Call("ceil", n, "number")
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
  __vt__.Call("bind", callback, "function")
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
shell_113(msg, message*) {
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
  __vt__.Call("abs", n, "number")
  return Abs(n)
}
shell_116(input) {
  if input is Number
    return input + 1
  return input
}

$.on.Call("alt", Func("script_6"))
$.on.Call("ctrl", Func("script_5"))
$.on.Call("shift", Func("script_4"))
$.on.Call("alt + 1", Func("script_3"))
$.on.Call("ctrl + 1", Func("script_2"))
$.on.Call("shift + 1", Func("script_1"))
script_1() {
  $.alert.Call("shift + 1")
}
script_2() {
  $.alert.Call("ctrl + 1")
}
script_3() {
  $.alert.Call("alt + 1")
}
script_4() {
  $.alert.Call("shift")
}
script_5() {
  $.alert.Call("ctrl")
}
script_6() {
  $.alert.Call("alt")
}
