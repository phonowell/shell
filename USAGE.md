# shell-ahk

> Lodash/jQuery 风格 AHK 库

## 快速开始

```bash
pnpm i shell-ahk
```

```coffeescript
import 'shell-ahk'
$.alert 'hello world'
```

## 约束

**大小写不敏感**：`Foo` = `foo`
**数组从 1 开始**：`arr[0]` → `arr[1]`

### 禁止语法

```coffee
x?.y              # ❌ 可选链
[1..10]           # ❌ 范围操作符
return 1 if cond  # ❌ 后置 if（用 if cond then 1）
x in [1, 2, 3]    # ❌ in 关系（仅 for...in）
await fetch()     # ❌ async/await
```

## 示例

```coffeescript
import 'shell-ahk'

# 数组
$.map [1, 2, 3], (x) -> x * 2          # [2, 4, 6]
$.filter [1, 2, 3], (x) -> x > 1       # [2, 3]
$.first [1, 2, 3]                      # 1

# 对象
$.keys {a: 1, b: 2}                    # ['a', 'b']
$.clone {a: 1}                         # {a: 1}

# 字符串
$.split 'a,b,c', ','                   # ['a', 'b', 'c']
$.replace 'hello', 'l', 'L'            # 'heLLo'

# AHK
$.alert 'Hello!'
$.click()
$.press 'ctrl+c'
$.keyBinding 'f1', -> $.alert 'pressed'

# 定时
$.delay 1000, -> $.alert 'delayed'
$.sleep 500
```

## 单独导入

```coffeescript
import map from 'shell-ahk/dist/map'
import filter from 'shell-ahk/dist/filter'

result = map [1, 2, 3], (x) -> x * 2
```

## 函数

**数组**: at · chunk · compact · concat · drop · each · filter · first · forEach · head · includes · join · last · length · map · nth · pop · push · range · reverse · shift · shuffle · slice · sort · tail · take · uniq · unshift

**对象**: clone · delete · keys · mixin · values

**字符串**: endsWith · join · replace · split · startsWith · subString · toLower · toLowerCase · toUpper · toUpperCase · toString · trim · trimEnd · trimStart

**类型**: getType · isArray · isFunction · isNumber · isObject · isString

**比较**: eq · gt · gte · lt · lte

**数学**: add · math · max · min · mod · random · setFixed · sum · toNumber

**AHK**: alert · beep · blockInput · click · confirm · echo · exec · exit · move · open · play · press · reload · suspend · tip

**事件**: emitter · off · on · once · trigger

**按键**: formatHotkey · isKeyBound · isKeyPreventedDefault · isPressing · keyBinding · preventDefaultKey

**定时**: clearInterval · clearTimeout · defer · delay · setInterval · setTimeout · sleep

**视觉**: findColor · findImage · getColor · getPosition

**其他**: file · window · httpGet · noop · now
