# CLAUDE.md

> **元原则**：代码优先文档 · 渐进披露 · 并行工具 · 人工要求信息不可删 · 对话发现重要信息主动记录本文件 · 输出 tokens 5x 价格惜字如金
>
> **Skill 使用**：调用 `Skill` 工具后**必须等待其完成**再执行其他操作 · 不得在 skill 运行时并行执行相同任务
>
> **客观诚实**：不主观评价 · 不因用户情绪转移立场 · 不编造事实 · 立刻暴露不确定信息
>
> **TodoWrite 使用**：≥3 步骤任务必须建 todo · 实时更新状态 · 完成立即标记

shell-ahk：Lodash/jQuery 风格 AHK 库 · CoffeeScript 编写 · coffee-ahk 编译

## 核心约束

**文件长度**：≤200 行 · CLAUDE.md ≤100 行
**单一职责**：每个 `.coffee` 仅一个默认导出
**纯函数**：同步 · 无副作用 · 无全局状态修改

## 命名空间隔离（关键）

- 可变局部变量**必须** `$` 前缀：`$result = 0` 非 `result = 0`
- 禁止手写 `<basename>_variable`，由构建转换 `$variable`
- 正则 `/\$([\w\d]+)/` → `<basename>_$1` 防 AHK 全局污染

## 工作流

`src/` 修改后：`pnpm build` → `pnpm test <name>`
**禁编辑** `dist/`（构建生成） · 测试从 `../dist/` 导入非 `../src/`

## 导入规则

`src/*.coffee`：禁导入 `dist/`（仅 `src/` 或外部包）
`*.test.coffee` + `scripts/`：可导入 `dist/`

## 类型系统

`.coffee` 配对 `.d.ts`（参考 `src/add.*`）：
- L1: `# @ts-check`
- L2: `###* @type import('./functionName').TypeName ###`
- `.d.ts`: `export type` + `declare module`

## 测试结构

1. 首行 `#import '../scripts/head.ahk'`
2. `#import` 函数从 `../dist/`
3. 断言失败：`throw new Error`
4. 末尾 `$exit()`
5. 单函数测试

## 命令

```bash
pnpm build         # 清理 dist · 转换 $变量 · 复制 .d.ts
pnpm watch         # 监听 src/ 自动构建 + 编译 scripts/*.coffee
pnpm test <name>   # 编译运行 src/<name>.test.coffee（macOS 不支持 AHK，仅构建验证）
pnpm task <name>   # 运行 task/<name>.ts
```

**测试限制**：macOS 无法运行 AHK · 仅验证编译 · 完整测试需 Windows 环境

## 信息查找

`task/build.ts`：构建流程（清理 · 转换 · 复制）
`task/test.ts`：测试流程（编译 → temp/ → 执行）
`../coffee-ahk/usage.md`：语法规则 · 禁止语法 · 限制
`src/add.*`：新函数模板
`scripts/head.ahk`：运行时配置
`src/`：函数分类

## 依赖

**coffee-ahk**：CS → AHK 编译（`../coffee-ahk` · `../coffee-ahk/usage.md`）
**fire-keeper**：文件 I/O · glob · 并发（`task/` 使用）
**radash**：工具库（`task/` 使用 · `src/` 禁用）

## 修改流程

1. `pnpm build` 确保干净
2. 修改 → `pnpm build` + `pnpm test <name>`
3. 签名改动同步 `.coffee` + `.d.ts`
4. 参考现有函数
5. 超 200 行需拆分
