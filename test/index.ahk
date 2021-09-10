﻿; Generated by Coffee-AHK/0.0.40
global __ci_shell__ := Func("shell_193")
global $ := {}
$.abs := Func("shell_192")
$.add := Func("shell_191")
$.alert := Func("shell_190")
$.beep := Func("shell_188")
$.bind := Func("shell_187")
$.blockInput := Func("shell_186")
$.ceil := Func("shell_185")
$.chunk := Func("shell_184")
$.clearInterval := Func("shell_183")
$.clearTimeout := Func("shell_182")
$.click := Func("shell_181")
$.clone := Func("shell_180")
$.compact := Func("shell_179")
$.concat := Func("shell_177")
global __iDebounce__ := 0
global __tDebounce__ := {}
$.debounce := Func("shell_176")
$.defer := Func("shell_174")
$.delay := Func("shell_172")
$.drop := Func("shell_170")
$.each := Func("shell_168")
class EmitterShellX {
  bus := []
  emit := Func("shell_167").Bind(this)
  off := Func("shell_166").Bind(this)
  on := Func("shell_165").Bind(this)
}
$.emitter := Func("shell_164")
global __eq__ := Func("shell_163")
$.eq := __eq__
$.exit := Func("shell_162")
class FileShellX {
  name := ""
  __New(name) {
    this.name := name
  }
  append := Func("shell_161").Bind(this)
  exist := Func("shell_160").Bind(this)
  delete := Func("shell_159").Bind(this)
  load := Func("shell_158").Bind(this)
  save := Func("shell_157").Bind(this)
}
$.file := Func("shell_156")
$.filter := Func("shell_155")
$.findColor := Func("shell_154")
$.findImage := Func("shell_153")
$.first := Func("shell_152")
$.head := $.first
$.floor := Func("shell_151")
$.formatHotkey := Func("shell_150")
global __formatKeyFormatHotkey__ := Func("shell_149")
global __pickPrefixFormatHotkey__ := Func("shell_148")
$.getColor := Func("shell_147")
$.getPosition := Func("shell_146")
$.getState := Func("shell_145")
$.gt := Func("shell_144")
$.gte := Func("shell_143")
$.i := Func("shell_142")
$.includes := Func("shell_141")
$.info := Func("shell_140")
$.isArray := Func("shell_139")
$.isFunction := Func("shell_138")
$.isNumber := Func("shell_137")
$.isObject := Func("shell_136")
$.isString := Func("shell_135")
$.join := Func("shell_134")
class KeyBindingShellX {
  mapBound := {}
  mapCallback := {}
  add := Func("shell_133").Bind(this)
  fire := Func("shell_132").Bind(this)
  init := Func("shell_131").Bind(this)
  off := Func("shell_129").Bind(this)
  on := Func("shell_128").Bind(this)
  remove := Func("shell_127").Bind(this)
}
global keyBindingShell := new KeyBindingShellX()
$.off := keyBindingShell.remove
$.on := keyBindingShell.add
$.trigger := keyBindingShell.fire
$.keys := Func("shell_126")
$.last := Func("shell_125")
$.length := Func("shell_124")
$.lt := Func("shell_123")
$.lte := Func("shell_122")
$.map := Func("shell_121")
$.mixin := Func("shell_120")
$.mod := Func("shell_119")
$.move := Func("shell_118")
$.noop := Func("shell_117")
$.now := Func("shell_116")
$.nth := Func("shell_115")
global __cacheOnce__ := {}
global __indexOnce__ := 0
$.once := Func("shell_114")
$.open := Func("shell_112")
$.play := Func("shell_111")
$.press := Func("shell_110")
global __formatInputPress__ := Func("shell_109")
global __validateInputPress__ := Func("shell_108")
$.push := Func("shell_107")
$.random := Func("shell_106")
$.range := Func("shell_105")
$.reload := Func("shell_104")
$.replace := Func("shell_103")
$.reverse := Func("shell_102")
$.round := Func("shell_101")
$.setFixed := Func("shell_100")
$.setInterval := Func("shell_99")
$.setTimeout := Func("shell_98")
$.shuffle := Func("shell_97").Bind(__split__)
$.sleep := Func("shell_96")
$.slice := Func("shell_95")
global __pickArgumentSlice__ := Func("shell_94")
$.sort := Func("shell_93")
$.split := Func("shell_92")
$.sum := Func("shell_91")
$.suspend := Func("shell_90")
$.tail := Func("shell_89")
$.take := Func("shell_88")
global __iThrottle__ := 0
global __tThrottle__ := {}
global __tsThrottle__ := {}
$.throttle := Func("shell_87")
$.toLowerCase := Func("shell_84")
$.toLower := $.toLowerCase
$.toString := Func("shell_83")
$.toUpperCase := Func("shell_82")
$.toUpper := $.toUpperCase
$.trim := Func("shell_81")
$.trimEnd := Func("shell_80")
$.trimStart := Func("shell_79")
$.type := Func("shell_78")
$.uniq := Func("shell_77")
$.values := Func("shell_76")
$.VERSION := "0.0.14"
(Func("shell_75")).Call()
(Func("shell_74")).Call()
(Func("shell_73")).Call()
(Func("shell_72")).Call()
(Func("shell_71")).Call()
(Func("shell_70")).Call()
(Func("shell_69")).Call()
(Func("shell_68")).Call()
(Func("shell_66")).Call()
(Func("shell_65")).Call()
(Func("shell_64")).Call()
(Func("shell_63")).Call()
(Func("shell_62")).Call()
(Func("shell_61")).Call()
(Func("shell_60")).Call()
(Func("shell_59")).Call()
(Func("shell_58")).Call()
(Func("shell_57")).Call()
(Func("shell_56")).Call()
(Func("shell_55")).Call()
(Func("shell_53")).Call()
(Func("shell_52")).Call()
(Func("shell_51")).Call()
(Func("shell_50")).Call()
(Func("shell_49")).Call()
(Func("shell_48")).Call()
(Func("shell_46")).Call()
(Func("shell_45")).Call()
(Func("shell_44")).Call()
(Func("shell_43")).Call()
(Func("shell_42")).Call()
(Func("shell_41")).Call()
(Func("shell_40")).Call()
(Func("shell_39")).Call()
(Func("shell_38")).Call()
(Func("shell_37")).Call()
(Func("shell_36")).Call()
(Func("shell_35")).Call()
(Func("shell_34")).Call()
(Func("shell_33")).Call()
(Func("shell_32")).Call()
(Func("shell_31")).Call()
(Func("shell_30")).Call()
(Func("shell_29")).Call()
(Func("shell_28")).Call()
(Func("shell_27")).Call()
(Func("shell_25")).Call()
(Func("shell_24")).Call()
(Func("shell_23")).Call()
(Func("shell_22")).Call()
(Func("shell_21")).Call()
(Func("shell_20")).Call()
(Func("shell_19")).Call()
(Func("shell_18")).Call()
(Func("shell_17")).Call()
(Func("shell_16")).Call()
(Func("shell_15")).Call()
(Func("shell_14")).Call()
(Func("shell_12")).Call()
(Func("shell_11")).Call()
(Func("shell_10")).Call()
(Func("shell_9")).Call()
(Func("shell_8")).Call()
(Func("shell_7")).Call()
(Func("shell_6")).Call()
(Func("shell_4")).Call()
(Func("shell_3")).Call()
(Func("shell_2")).Call()
(Func("shell_1")).Call()
shell_1() {
  list := [0]
  $.push.Call(list, 1)
  if !(list[2] == 1) {
    throw 0
  }
  $.push.Call(list, 2, 3, 4)
  if !(list[3] == 2) {
    throw 1
  }
  if !(list[5] == 4) {
    throw 4
  }
}
shell_2() {
  if !(($.type.Call($.press)) == "function") {
    throw 0
  }
}
shell_3() {
  if !(($.type.Call($.play)) == "function") {
    throw 0
  }
}
shell_4() {
  if !(($.type.Call($.open)) == "function") {
    throw 0
  }
}
shell_5(map) {
  map.n += 1
}
shell_6() {
  map := {n: 0}
  add := $.once.Call(Func("shell_5").Bind(map))
  add.Call()
  if !(map.n == 1) {
    throw 0
  }
  add.Call()
  if !(map.n == 1) {
    throw 1
  }
}
shell_7() {
  list := [0, 1, 2, 3]
  n := $.nth.Call(list, 0)
  if !(n == 0) {
    throw n
  }
  n := $.nth.Call(list, 1)
  if !(n == 1) {
    throw n
  }
  n := $.nth.Call(list, -1)
  if !(n == 3) {
    throw n
  }
}
shell_8() {
  now := $.now.Call()
  if !(($.type.Call(now)) == "number") {
    throw 0
  }
}
shell_9() {
  if !(($.type.Call($.noop)) == "function") {
    throw 0
  }
}
shell_10() {
  $.move.Call([100, 100])
  __array__ := $.getPosition.Call()
  x := __array__[1]
  y := __array__[2]
  if !(x == 100 && y == 100) {
    throw 0
  }
}
shell_11() {
  n := $.mod.Call(5, 2)
  if !(n == 1) {
    throw n
  }
  n := $.mod.Call(7, 5)
  if !(n == 2) {
    throw n
  }
}
shell_12() {
  mapA := {a: 1}
  mapB := {b: 2}
  mapC := {c: 3}
  $.mixin.Call(mapA, mapB, mapC)
  result := $.join.Call($.keys.Call(mapA))
  if !(result == "a,b,c") {
    throw 1
  }
  result := $.join.Call($.values.Call(mapA))
  if !(result == "1,2,3") {
    throw 2
  }
}
shell_13(n) {
  return n + 1
}
shell_14() {
  list := [1, 2, 3]
  result := $.join.Call($.map.Call(list, Func("shell_13")))
  if !(result == "2,3,4") {
    throw 0
  }
}
shell_15() {
  result := $.lte.Call(1, 2)
  if !(result) {
    throw 0
  }
  result := $.lte.Call(2, 1)
  if (result) {
    throw 1
  }
  result := $.lte.Call(1, 1)
  if !(result) {
    throw 2
  }
}
shell_16() {
  result := $.lt.Call(1, 2)
  if !(result) {
    throw 0
  }
  result := $.lt.Call(2, 1)
  if (result) {
    throw 1
  }
  result := $.lt.Call(1, 1)
  if (result) {
    throw 2
  }
}
shell_17() {
  string := "wow"
  n := $.length.Call(string)
  if !(n == 3) {
    throw 3
  }
}
shell_18() {
  map := {a: 1, b: 2, c: 3}
  n := $.length.Call(map)
  if !(n == 3) {
    throw 2
  }
}
shell_19() {
  list := [1, 2, 3]
  n := $.length.Call(list)
  if !(n == 3) {
    throw 1
  }
}
shell_20() {
  list := [1, 2, 3]
  item := $.last.Call(list)
  if !(item == 3) {
    throw 0
  }
}
shell_21() {
  map := {a: 1, b: 2, c: 3}
  result := $.join.Call($.keys.Call(map))
  if !(result := "a,b,c") {
    throw 0
  }
}
shell_22() {
  list := [1, 2, 3, 4, 5]
  result := $.join.Call(list)
  if !(result == "1,2,3,4,5") {
    throw 1
  }
  result := $.join.Call(list, "")
  if !(result == "12345") {
    throw 2
  }
}
shell_23() {
  string := "aloha"
  result := $.isString.Call(string)
  if !(result) {
    throw 1
  }
}
shell_24() {
  map := {a: 1}
  result := $.isObject.Call(map)
  if !(result) {
    throw 1
  }
}
shell_25() {
  n := 1
  result := $.isNumber.Call(n)
  if !(result) {
    throw 1
  }
}
shell_26() {
  return ""
}
shell_27() {
  fn := Func("shell_26")
  result := $.isFunction.Call(fn)
  if !(result) {
    throw 1
  }
}
shell_28() {
  list := []
  result := $.isArray.Call(list)
  if !(list) {
    throw 1
  }
  list := [1, 2, 3]
  result := $.isArray.Call(list)
  if !(result) {
    throw 2
  }
}
shell_29() {
  if !(($.type.Call($.info)) == "function") {
    throw 0
  }
}
shell_30() {
  list := [1, 2, 3]
  result := $.includes.Call(list, 1)
  if !(result) {
    throw 3
  }
  result := $.includes.Call(list, 4)
  if (result) {
    throw 4
  }
}
shell_31() {
  string := "string"
  result := $.includes.Call(string, "s")
  if !(result) {
    throw 1
  }
  result := $.includes.Call(string, "a")
  if (result) {
    throw 2
  }
}
shell_32() {
  if !(($.type.Call($.i)) == "function") {
    throw 0
  }
}
shell_33() {
  result := $.gte.Call(2, 1)
  if !(result) {
    throw 0
  }
  result := $.gte.Call(1, 2)
  if (result) {
    throw 1
  }
  result := $.gte.Call(1, 1)
  if !(result) {
    throw 2
  }
}
shell_34() {
  result := $.gt.Call(2, 1)
  if !(result) {
    throw 0
  }
  result := $.gt.Call(1, 2)
  if (result) {
    throw 1
  }
  result := $.gt.Call(1, 1)
  if (result) {
    throw 2
  }
}
shell_35() {
  if !(($.type.Call($.getState)) == "function") {
    throw 0
  }
}
shell_36() {
  if !(($.type.Call($.getPosition)) == "function") {
    throw 0
  }
  $.move.Call([100, 100])
  __array__ := $.getPosition.Call()
  x := __array__[1]
  y := __array__[2]
  if !(x == 100 && y == 100) {
    throw 0
  }
}
shell_37() {
  if !(($.type.Call($.getColor)) == "function") {
    throw 0
  }
}
shell_38() {
  key := "alt + ctrl + shift + win + esc"
  result := $.formatHotkey.Call(key)
  if !(result == "!^+#esc") {
    throw result
  }
}
shell_39() {
  key := "win + r"
  result := $.formatHotkey.Call(key)
  if !(result == "#r") {
    throw result
  }
}
shell_40() {
  key := "shift + a"
  result := $.formatHotkey.Call(key)
  if !(result == "+a") {
    throw result
  }
}
shell_41() {
  key := "ctrl + f5"
  result := $.formatHotkey.Call(key)
  if !(result == "^f5") {
    throw result
  }
}
shell_42() {
  key := "alt + f4"
  result := $.formatHotkey.Call(key)
  if !(result == "!f4") {
    throw result
  }
}
shell_43() {
  n := 1.2
  result := $.floor.Call(n)
  if !(result == 1) {
    throw result
  }
  n := -1.2
  result := $.floor.Call(n)
  if !(result == -2) {
    throw result
  }
}
shell_44() {
  list := [1, 2, 3]
  n := $.first.Call(list)
  if !(n == 1) {
    throw n
  }
}
shell_45() {
  if !(($.type.Call($.findImage)) == "function") {
    throw 0
  }
}
shell_46() {
  if !(($.type.Call($.findColor)) == "function") {
    throw 0
  }
}
shell_47(it) {
  return it != 2
}
shell_48() {
  list := [1, 2, 3]
  listA := $.filter.Call(list, Func("shell_47"))
  if !(($.join.Call(listA, "")) == "13") {
    throw 0
  }
}
shell_49() {
  if !(($.type.Call($.exit)) == "function") {
    throw 0
  }
}
shell_50() {
  mapA := {a: 1, b: 2}
  mapB := {a: 1, b: 2}
  if !($.eq.Call(mapA, mapB)) {
    throw 0
  }
  mapC := {a: 1, b: 2, c: 3}
  if ($.eq.Call(mapA, mapC)) {
    throw 1
  }
}
shell_51() {
  listA := [1, 2]
  listB := [1, 2]
  if !($.eq.Call(listA, listB)) {
    throw 0
  }
  listC := [1, 2, 3]
  if ($.eq.Call(listA, listC)) {
    throw 1
  }
}
shell_52() {
  stringA := "hello"
  stringB := "hello"
  if !($.eq.Call(stringA, stringB)) {
    throw 0
  }
  stringC := "aloha"
  if ($.eq.Call(stringA, stringC)) {
    throw 1
  }
}
shell_53() {
  a := 1
  b := 1
  if !($.eq.Call(a, b)) {
    throw 0
  }
  c := 2
  if ($.eq.Call(a, c)) {
    throw 1
  }
}
shell_54(listA, length, it, i) {
  listA[__ci_shell__.Call(length - i)] := it
}
shell_55() {
  list := [1, 2, 3, 4]
  listA := []
  length := $.length.Call(list)
  $.each.Call(list, Func("shell_54").Bind(listA, length))
  string := $.join.Call(list)
  if !(string := "4321") {
    throw string
  }
}
shell_56() {
  list := [1, 2, 3, 4, 5]
  listA := $.drop.Call(list)
  result := $.join.Call(listA, "")
  if !(result == "2345") {
    throw result
  }
  listB := $.drop.Call(list, 3)
  result := $.join.Call(listB, "")
  if !(result == "45") {
    throw result
  }
}
shell_57() {
  if !(($.type.Call($.delay)) == "function") {
    throw 0
  }
}
shell_58() {
  if !(($.type.Call($.defer)) == "function") {
    throw 0
  }
}
shell_59() {
  if !(($.type.Call($.debounce)) == "function") {
    throw 0
  }
}
shell_60() {
  listA := $.concat.Call([1, 2, 3], 4, 5, [6, 7], 8, [9])
  if !(($.join.Call(listA, "")) == "123456789") {
    throw listA
  }
}
shell_61() {
  list := [0, 1, false, true, "", "x"]
  listA := $.compact.Call(list)
  if !(($.join.Call(listA, "")) == "11x") {
    throw listA
  }
}
shell_62() {
  map := {a: 1, b: 2, c: 3}
  mapA := $.clone.Call(map)
  if !(($.join.Call([mapA.a, mapA.b, mapA.c], "")) == "123") {
    throw mapA
  }
}
shell_63() {
  list := [1, 2, 3]
  listA := $.clone.Call(list)
  if !(($.join.Call(listA, "")) == "123") {
    throw listA
  }
}
shell_64() {
  if !(($.type.Call($.click)) == "function") {
    throw 0
  }
}
shell_65() {
  if !(($.type.Call($.clearTimeout)) == "function") {
    throw 0
  }
}
shell_66() {
  if !(($.type.Call($.clearInterval)) == "function") {
    throw 0
  }
}
shell_67(it) {
  return $.join.Call(it, "")
}
shell_68() {
  list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  listA := $.chunk.Call(list, 4)
  string := $.join.Call(($.map.Call(listA, Func("shell_67"))), ",")
  if !(string == "1234,5678,910") {
    throw string
  }
}
shell_69() {
  n := 1.2
  result := $.ceil.Call(n)
  if !(result == 2) {
    throw 0
  }
  n := -1.2
  result := $.ceil.Call(n)
  if !(result == -1) {
    throw 1
  }
}
shell_70() {
  if !(($.type.Call($.blockInput)) == "function") {
    throw 0
  }
}
shell_71() {
  if !(($.type.Call($.bind)) == "function") {
    throw 0
  }
}
shell_72() {
  if !(($.type.Call($.beep)) == "function") {
    throw 0
  }
}
shell_73() {
  if !(($.type.Call($.alert)) == "function") {
    throw 0
  }
}
shell_74() {
  a := 1
  b := 2
  c := 3
  d := -4
  result := $.add.Call(a)
  if !(result == 1) {
    throw result
  }
  result := $.add.Call(a, b, c)
  if !(result == 6) {
    throw result
  }
  result := $.add.Call(a, b, c, d)
  if !(result == 2) {
    throw result
  }
}
shell_75() {
  n := 42
  result := $.abs.Call(n)
  if !(result == 42) {
    throw result
  }
  n := -42
  result := $.abs.Call(n)
  if !(result == 42) {
    throw result
  }
}
shell_76(input) {
  __listResult__ := []
  for __index_for__, __key__ in $.keys.Call(input) {
    $.push.Call(__listResult__, input[__ci_shell__.Call(__key__)])
  }
  return __listResult__
}
shell_77(list) {
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
shell_78(input) {
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
shell_79(input, omitting := " `t") {
  return LTrim(input, omitting)
}
shell_80(input, omitting := " `t") {
  return RTrim(input, omitting)
}
shell_81(input, omitting := " `t") {
  return Trim(input, omitting)
}
shell_82(input) {
  StringUpper, __result__, input
  return __result__
}
shell_83(input) {
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
shell_84(input) {
  StringLower, __result__, input
  return __result__
}
shell_85(callback, index) {
  callback.Call()
  __tsThrottle__[__ci_shell__.Call(index)] := $.now.Call()
}
shell_86(callback, time, index) {
  $.clearTimeout.Call(__tThrottle__[__ci_shell__.Call(index)])
  __tThrottle__[__ci_shell__.Call(index)] := $.setTimeout.Call(Func("shell_85").Bind(callback, index), __tsThrottle__[__ci_shell__.Call(index)] - $.now.Call() + time)
}
shell_87(time, callback) {
  __iThrottle__++
  __tsThrottle__[__ci_shell__.Call(__iThrottle__)] := 0
  return Func("shell_86").Bind(callback, time, __iThrottle__)
}
shell_88(list, count := 1) {
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
shell_89(list) {
  return $.drop.Call(list, 1)
}
shell_90(isSuspended := "Toggle") {
  if (isSuspended != "Toggle") {
    if (isSuspended) {
      isSuspended := "On"
    } else {
      isSuspended := "Off"
    }
  }
  Suspend, % isSuspended
}
shell_91(list) {
  __result__ := 0
  for __index_for__, __n__ in list {
    __result__ := __result__ + __n__
  }
  return __result__
}
shell_92(input, delimiter) {
  return StrSplit(input, delimiter)
}
shell_93(list) {
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
shell_94(args) {
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
shell_95(args*) {
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
shell_96(time) {
  Sleep, % time
}
shell_97(__split__, list) {
  __string__ := $.join.Call(list, ",")
  Sort, __string__, Random D,
  return __split__.Call(__string__, ",")
}
shell_98(callback, time) {
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
shell_99(callback, time) {
  callback := $.bind.Call(callback)
  if !(time > 0) {
    throw Exception("$.setInterval: invalid value")
  }
  SetTimer, % callback, % time
  return callback
}
shell_100(isFixed := "Toggle") {
  if (isFixed != "Toggle") {
    if (isFixed) {
      isFixed := "On"
    } else {
      isFixed := "Off"
    }
  }
  Winset AlwaysOnTop, % isFixed, A
}
shell_101(n) {
  return Round(n)
}
shell_102(list) {
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
shell_103(input, searchment, replacement, limit := -1) {
  return StrReplace(input, searchment, replacement, limit)
}
shell_104() {
  Reload
}
shell_105(args*) {
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
shell_106(min := 0, max := 1) {
  Random, __result__, min, max
  return __result__
}
shell_107(list, args*) {
  for __index_for__, __arg__ in args {
    list.Push(__arg__)
  }
  return list
}
shell_108(listInput) {
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
shell_109(listInput) {
  __listKey__ := []
  for __index_for__, __input__ in listInput {
    __ipt__ := $.toLowerCase.Call(__input__)
    __ipt__ := $.replace.Call(__ipt__, " ", "")
    __ipt__ := $.replace.Call(__ipt__, "-", "")
    $.push.Call(__listKey__, ($.split.Call(__ipt__, "+"))*)
  }
  return __listKey__
}
shell_110(listInput*) {
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
shell_111(filename) {
  SoundPlay, % filename
}
shell_112(source) {
  Run, % source
}
shell_113(__i__, callback, args*) {
  if (__cacheOnce__[__ci_shell__.Call(__i__)][1]) {
    return __cacheOnce__[__ci_shell__.Call(__i__)][2]
  }
  __result__ := callback.Call(args*)
  __cacheOnce__[__ci_shell__.Call(__i__)] := [true, __result__]
  return __result__
}
shell_114(callback) {
  __i__ := __indexOnce__
  __indexOnce__++
  __cacheOnce__[__ci_shell__.Call(__i__)] := [false, ""]
  return Func("shell_113").Bind(__i__, callback)
}
shell_115(list, n := 0) {
  if (n >= 0) {
    return list[__ci_shell__.Call(n)]
  } else {
    return list[__ci_shell__.Call(($.length.Call(list)) + n)]
  }
}
shell_116() {
  return A_TickCount
}
shell_117() {
  return
}
shell_118(point := "", speed := 0) {
  MouseMove, point[1], point[2], speed
}
shell_119(dividend, divisor) {
  return Mod(dividend, divisor)
}
shell_120(args*) {
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
shell_121(list, callback) {
  __listResult__ := []
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    $.push.Call(__listResult__, callback.Call(__item__, __i__))
  }
  return __listResult__
}
shell_122(value, other) {
  return value <= other
}
shell_123(value, other) {
  return value < other
}
shell_124(input) {
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
shell_125(list) {
  return list[__ci_shell__.Call(($.length.Call(list)) - 1)]
}
shell_126(input) {
  __listResult__ := []
  for __key__, __value__ in input {
    $.push.Call(__listResult__, __key__)
  }
  return $.sort.Call(__listResult__)
}
shell_127(this, key) {
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
shell_128(this, key, callback) {
  key := $.formatHotkey.Call($.replace.Call(key, ":down", ""))
  Hotkey, % key, % callback, On
  return $
}
shell_129(this, key, callback) {
  key := $.formatHotkey.Call($.replace.Call(key, ":down", ""))
  Hotkey, % key, % callback, Off
  return $
}
shell_130(key, this) {
  this.fire.Call(key)
}
shell_131(this, key) {
  if (this.mapCallback[__ci_shell__.Call(key)]) {
    return $
  }
  this.mapCallback[__ci_shell__.Call(key)] := []
  __fn__ := Func("shell_130").Bind(key, this)
  this.mapBound[__ci_shell__.Call(key)] := __fn__
  this.on.Call(key, __fn__)
}
shell_132(this, key) {
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
shell_133(this, key, callback) {
  __array__ := $.split.Call(key, ".")
  key := __array__[1]
  __name__ := __array__[2]
  this.init.Call(key)
  $.push.Call(this.mapCallback[__ci_shell__.Call(key)], [__name__, callback])
  return $
}
shell_134(list, seperator := ",") {
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
shell_135(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "string") {
    return false
  }
  return true
}
shell_136(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "object") {
    return false
  }
  return true
}
shell_137(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "number") {
    return false
  }
  return true
}
shell_138(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "function") {
    return false
  }
  return true
}
shell_139(input) {
  __type__ := $.type.Call(input)
  if !(__type__ == "array") {
    return false
  }
  return true
}
shell_140(message, point := "") {
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
shell_141(input, needle) {
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
shell_142(message) {
  $.info.Call("[" . ($.now.Call()) . "] " . ($.toString.Call(message)) . "", [0, 0])
  return message
}
shell_143(value, other) {
  return value >= other
}
shell_144(value, other) {
  return value > other
}
shell_145(key) {
  key := $.formatHotkey.Call(key)
  return GetKeyState(key, "P")
}
shell_146() {
  MouseGetPos, __x__, __y__
  return [__x__, __y__]
}
shell_147(point := "") {
  if !(point) {
    point := $.getPosition.Call()
  }
  PixelGetColor, __result__, % point[1], % point[2], RGB
  return __result__
}
shell_148(listKey) {
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
shell_149(key) {
  __listKey__ := []
  __key__ := $.toLowerCase.Call(key)
  __key__ := $.replace.Call(__key__, " ", "")
  __key__ := $.replace.Call(__key__, "-", "")
  $.push.Call(__listKey__, ($.split.Call(__key__, "+"))*)
  return __listKey__
}
shell_150(key) {
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
shell_151(n) {
  return Floor(n)
}
shell_152(list) {
  return list[1]
}
shell_153(source, start := "", end := "") {
  if !(start) {
    start := [0, 0]
  }
  if !(end) {
    end := [A_ScreenWidth, A_ScreenHeight]
  }
  ImageSearch __x__, __y__, start[1], start[2], end[1], end[2], % A_ScriptDir . "\\\" . source
  return [__x__, __y__]
}
shell_154(color, start := "", end := "", variation := 0) {
  if !(start) {
    start := [0, 0]
  }
  if !(end) {
    end := [A_ScreenWidth, A_ScreenHeight]
  }
  PixelSearch __x__, __y__, start[1], start[2], end[1], end[2], color, variation, Fast RGB
  return [__x__, __y__]
}
shell_155(list, callback) {
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
shell_156(name) {
  return new FileShellX(name)
}
shell_157(this, content) {
  this.delete.Call()
  return this.append.Call(content)
}
shell_158(this) {
  if !(this.exist.Call()) {
    return ""
  }
  FileRead, __result__, % this.name
  return $.replace.Call(__result__, "`r", "")
}
shell_159(this) {
  if !(this.exist.Call()) {
    return this
  }
  FileDelete, % this.name
  return this
}
shell_160(this) {
  if !(FileExist(this.name)) {
    return false
  }
  return true
}
shell_161(this, content) {
  FileAppend, % content, % this.name, UTF-8
  return content
}
shell_162() {
  ExitApp
}
shell_163(value, other) {
  __typeA__ := $.type.Call(value)
  __typeB__ := $.type.Call(other)
  if !(__typeA__ == __typeB__) {
    return false
  }
  if ($.includes.Call(["function", "number", "string"], __typeA__)) {
    return value == other
  }
  __lengthA__ := $.length.Call(value)
  __lengthB__ := $.length.Call(other)
  if !(__lengthA__ == __lengthB__) {
    return false
  }
  if (__typeA__ == "array") {
    for __i__, __it__ in value {
      __i__ := __i__ - 1
      if !(__eq__.Call(__it__, other[__ci_shell__.Call(__i__)])) {
        return false
      }
    }
    return true
  }
  for __k__, __v__ in value {
    if !(__eq__.Call(__v__, other[__ci_shell__.Call(__k__)])) {
      return false
    }
  }
  return true
}
shell_164() {
  return new EmitterShellX
}
shell_165(this, key, callback) {
  __array__ := $.split.Call(key, ".")
  __type__ := __array__[1]
  __name__ := __array__[2]
  $.push.Call(this.bus, [__type__, __name__, callback])
  return this
}
shell_166(this, key) {
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
shell_167(this, key, args*) {
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
shell_168(list, callback) {
  for __i__, __item__ in list {
    __i__ := __i__ - 1
    callback.Call(__item__, __i__)
  }
}
shell_169(n, _it, i) {
  return i >= n
}
shell_170(list, n := 1) {
  return $.filter.Call(list, Func("shell_169").Bind(n))
}
shell_171(callback, args) {
  callback.Call(args*)
}
shell_172(callback, time, args*) {
  __timer__ := $.setTimeout.Call(Func("shell_171").Bind(callback, args), time)
  return __timer__
}
shell_173(callback, args) {
  callback.Call(args*)
}
shell_174(callback, args*) {
  return $.delay.Call(Func("shell_173").Bind(callback, args), 1)
}
shell_175(callback, time, index) {
  $.clearTimeout.Call(__tDebounce__[__ci_shell__.Call(index)])
  __tDebounce__[__ci_shell__.Call(index)] := $.setTimeout.Call(callback, time)
}
shell_176(time, callback) {
  __iDebounce__++
  return Func("shell_175").Bind(callback, time, __iDebounce__)
}
shell_177(list, args*) {
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
shell_178(it) {
  return it
}
shell_179(list) {
  return $.filter.Call(list, Func("shell_178"))
}
shell_180(input) {
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
shell_181(key := "left") {
  key := $.replace.Call(key, "-", "")
  key := $.replace.Call(key, ":", " ")
  Click, % key
}
shell_182(callback) {
  if !(callback) {
    return
  }
  SetTimer, % callback, Delete
}
shell_183(callback) {
  if !(callback) {
    return
  }
  SetTimer, % callback, Delete
}
shell_184(list, n := 1) {
  __listNew__ := []
  __length__ := $.length.Call(list)
  __i__ := 0
  while (__i__ < __length__ / n) {
    __listTemp__ := []
    __j__ := 0
    while (__j__ < n) {
      __index__ := __i__ * n + __j__
      if !(__index__ < __length__) {
        break
      }
      $.push.Call(__listTemp__, list[__ci_shell__.Call(__index__)])
      __j__++
    }
    $.push.Call(__listNew__, __listTemp__)
    __i__++
  }
  return __listNew__
}
shell_185(n) {
  return Ceil(n)
}
shell_186(block) {
  if (block) {
    BlockInput, On
    return
  }
  BlockInput, Off
}
shell_187(callback, args*) {
  if !(callback.Name) {
    if !($.length.Call(args)) {
      return callback
    }
    throw Exception("$.bind: cannot bind a bound function")
  }
  return callback.Bind(args*)
}
shell_188() {
  SoundBeep
}
shell_189(msg) {
  return $.toString.Call(msg)
}
shell_190(message*) {
  __msg__ := $.join.Call(($.map.Call(message, Func("shell_189"))), ", ")
  MsgBox, % __msg__
}
shell_191(args*) {
  __result__ := 0
  for __index_for__, __arg__ in args {
    __result__ := __result__ + __arg__
  }
  return __result__
}
shell_192(n) {
  return Abs(n)
}
shell_193(input) {
  if input is Number
    return input + 1
  return input
}
