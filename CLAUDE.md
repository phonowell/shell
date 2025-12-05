# CLAUDE.md

> **元原则**：代码优先于文档 · 渐进式披露 · 并行工具调用 · 人工要求的信息不可轻易移除 · 对话中发现的重要信息主动记录到本文件

## 项目概述

shell-ahk 是 Lodash/jQuery 风格的 AutoHotkey 工具库，使用 CoffeeScript 编写并通过 coffee-ahk 编译。

## 核心约束

### 代码质量
- **文件长度限制**：所有项目文件不得超过 200 行；CLAUDE.md 不得超过 100 行
- **单一职责**：每个 `.coffee` 文件只导出一个默认导出
- **保持纯函数**：同步、无副作用、无全局状态修改

### 命名空间隔离（关键）
- **所有可变局部变量必须加 `$` 前缀**（例：`$result = 0`，而非 `result = 0`）
- **禁止手写 `<basename>_variable`**，让构建系统自动转换 `$variable`
- 构建时使用正则 `/\$([\w\d]+)/` 将变量转换为 `<basename>_$1` 防止 AHK 全局污染

### 工作流
- **编辑 → 构建 → 测试**：修改 `src/` 后必须 `pnpm build`，然后 `pnpm test <name>`
- **禁止直接编辑 `dist/`**：`dist/` 由构建生成
- **测试必须导入 `dist/`**：测试文件从 `../dist/` 导入，而非 `../src/`

### 导入规则
- `src/*.coffee`：禁止导入 `dist/`（只能导入 `src/` 或外部包）
- `*.test.coffee` 和 `scripts/`：可以导入 `dist/`

### 类型系统
每个函数需配对的 `.d.ts` 文件，参考 `src/add.d.ts` 和 `src/add.coffee` 的模式：
- 第 1 行：`# @ts-check`
- 第 2 行：`###* @type import('./functionName').TypeName ###`
- `.d.ts` 使用 `export type` + `declare module` 模式

### 测试结构
测试文件必须遵循：
1. 首行导入 `../scripts/head.ahk`（AHK 运行时配置）
2. 从 `../dist/` 导入待测函数
3. 使用 `throw new Error` 断言失败
4. 末尾调用 `$exit()` 终止进程
5. 单次只测一个函数（无批量测试）

## 常用命令

```bash
pnpm build              # 构建 dist/（清理、转换 $变量、复制 .d.ts）
pnpm watch              # 监听 src/ 自动构建 + 编译 scripts/*.coffee
pnpm test <name>        # 编译并运行 src/<name>.test.coffee
pnpm task <taskName>    # 运行 task/*.ts 中的任务
```

## 信息查找指引

- **构建流程详情**：查看 `task/build.ts`（三步：清理 dist、转换 $变量、复制 .d.ts）
- **测试执行流程**：查看 `task/test.ts`（编译 test.coffee → temp/ → 执行 AHK）
- **CoffeeScript → AHK 语法**：参考 `../coffee-ahk/usage.md`（禁止语法、已知限制、解决方案）
- **新增函数模板**：参考现有函数（如 `src/add.coffee` 和 `src/add.d.ts`）
- **运行时配置**：查看 `scripts/head.ahk`（CoordMode、SendMode 等）
- **函数分类清单**：查看 `src/` 目录（数组、对象、字符串、类型检查、AHK 交互、事件、文件、按键绑定、定时、视觉）

## 核心依赖

- **coffee-ahk**：CoffeeScript → AHK 编译器（源码：`../coffee-ahk`，文档：`../coffee-ahk/usage.md`）
- **fire-keeper**：文件 I/O、glob、并发执行（在 `task/` 中使用）
- **radash**：轻量工具库（仅在 `task/` 中使用，`src/` 保持纯净）

## 修改最佳实践

1. 修改前运行 `pnpm build` 确保干净状态
2. 修改后立即 `pnpm build` + `pnpm test <name>`
3. 修改函数签名时同步更新 `.coffee` 和 `.d.ts`
4. 不确定时参考现有函数的成熟模式
5. 超过 200 行的文件需拆分或优化
