# Coffee-AHK 编译器问题汇总

## Issue 1: 箭头函数 `=>` 编译生成的 AHK 代码存在参数绑定问题

### 问题描述

当 CoffeeScript 源代码中使用箭头函数 `=>` 来绑定 `this` 上下文时，编译生成的 AHK 代码在 hotkey 回调场景下无法正常工作。

### 最小复现代码

**CoffeeScript 源代码 (`src/keyBindingShell.coffee`):**

```coffee
class KeyBindingShell
  constructor: ->
    @mapBound = {}
    @mapCallback = {}
    @mapPrevented = {}

  prepare: (key) ->
    if @mapCallback[key] then return
    @mapBound[key] = => @fire key  # 问题所在：使用 => 绑定 this
    @mapCallback[key] = []
    @mapPrevented[key] = false
    return

  fire: (key) ->
    # ... 实现 ...
```

### 预期行为

`=> @fire key` 应该被编译为能够正确捕获 `this` 和 `key` 的 AHK 回调函数，使得 hotkey 触发时能正确调用实例方法。

### 实际行为

**生成的 AHK 代码 (`test.ahk`):**

```ahk
z_9(λ, ℓthis, key) {
  this := ℓthis
  λ.key := key
  if (this.mapCallback[ℓci_z.Call(.mapCallback, λ.key)]) {
    return
  }
  λ.keyBindingShell_self := this
  λ.keyBindingShell_key := λ.key
  this.mapBound[ℓci_z.Call(.mapBound, λ.key)] := Func("z_8").Bind(λ)  # ← 这里
  this.mapCallback[ℓci_z.Call(.mapCallback, λ.key)] := []
  this.mapPrevented[ℓci_z.Call(.mapPrevented, λ.key)] := false
  return
}

z_8(λ) {
  return λ.keyBindingShell_self.fire.Call(λ.keyBindingShell_key)
}
```

**问题分析：**

1. `z_8` 函数期望 `λ` 对象包含 `keyBindingShell_self` 和 `keyBindingShell_key` 属性
2. 但 `Func("z_8").Bind(λ)` 只是将 `λ` 作为第一个参数绑定
3. 当 hotkey 触发时，AHK 调用 `z_8(λ)`，此时 `λ` 应该包含正确的值

**然而，实际运行时的问题是：**

- `λ` 对象在 `prepare` 方法调用时创建并绑定
- 但 `λ` 是一个普通的对象，不是闭包
- 在 hotkey 触发时，`λ` 对象中的值可能已经被修改或丢失

### 根本原因

CoffeeScript 的 `=>` 语法在编译为 AHK 时，没有正确处理以下情况：
1. 需要同时捕获 `this` 上下文
2. 需要捕获局部变量
3. 需要在 AHK 的 `Func().Bind()` 机制下保持这些捕获的值

### 临时解决方案

手动使用显式变量捕获：

```coffee
prepare: (key) ->
  if @mapCallback[key] then return
  $self = @
  $key = key
  @mapBound[key] = -> $self.fire $key  # 使用 -> 而非 =>
  @mapCallback[key] = []
  @mapPrevented[key] = false
  return
```

### 建议的编译器修复

coffee-ahk 应该将 `=>` 表达式：

```coffee
obj.method = => @someMethod arg
```

编译为：

```ahk
; 方案 A: 使用额外的 Bind 参数
obj.method := Func("callback").Bind(this, arg)

callback(this, arg) {
  return this.someMethod(arg)
}

; 方案 B: 使用对象捕获（但需要确保对象生命周期）
λ := {}
λ.self := this
λ.arg := arg
obj.method := Func("callback").Bind(λ)

callback(λ) {
  return λ.self.someMethod(λ.arg)
}
```

### 影响范围

- 所有使用类方法作为回调的场景
- Hotkey 回调
- 事件处理器
- 定时器回调

### 相关版本

- coffee-ahk: 0.0.99
- 项目 shell: 当前版本

---

## 附加说明

当前项目使用 workaround 解决了此问题，但建议在 coffee-ahk 层面提供原生支持，以避免用户需要手动处理此类情况。
