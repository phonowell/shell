# shell-ahk：Copilot 指南

> **元原则**：中文文档 · 300行限制 · AI友好优先 · 节省Tokens · 并行工具调用 · 代码优先于文档 · **人工要求的信息不可轻易移除**

目标：让 AI 代理快速在本项目中新增 / 修改 CoffeeScript AHK 工具函数，并正确处理类型、构建与测试流程。

## 架构与流程

- `src/`：核心函数，每个 `*.coffee` 搭配一个同名 `*.d.ts` 类型声明。
- `task/`：自定义任务脚本（构建 / 测试 / 监听），通过 `pnpm task <name>` 或 npm scripts 调用。
- 构建产物：`pnpm build` 调用 `task/build.ts`，清空 `dist/`，把所有 `$变量` 重写为 `<文件名>_变量` 做命名空间隔离，并复制 `.d.ts`。
- 测试：`*.test.coffee` 使用 `coffee-ahk` 编译为 `.ahk`，落地到 `temp/` 后直接启动 AHK 运行。
- `scripts/`：运行环境脚本（如 `head.ahk` 设置 AutoHotkey 运行指令）。

## 源码约定

- 每个函数文件首行：`# @ts-check`，随后放三引号 JSDoc 类型引用：`###* @type import('./add').Add ###`。
- 仅一个默认导出，文件保持纯函数 / 无副作用。
- 所有需要隔离的本地变量前缀 `$`，不要手动写成 `<basename>_x`，交由构建替换。
- 一文件一函数；对应 `.d.ts` 内声明类型并通过 `declare module './foo'` 输出默认值。
- 绝不直接编辑 `dist/`，源改动后重新构建。

## 类型声明模式示例

`src/add.d.ts`：

```ts
export type Add = (...args: number[]) => number;
declare module "./add" {
  const add: Add;
  export default add;
}
```

在 CoffeeScript 中用：`###* @type import('./add').Add ###` 引用类型。

## 构建与监听

- 构建：`pnpm build` → 清理 `dist/` → 重写 `$` → 复制类型。
- 监听：`pnpm watch` → 监听 `src/` 自动触发构建；同时编译 `scripts/*.coffee` → `.ahk`。
- 命名空间替换正则：`/\$([\w\d]+)/` → `<basename>_$1`。

## 测试流程

- 新建 `src/foo.test.coffee`，第一行导入环境：`import '../scripts/head.ahk'`。
- 引入被测函数：`import $foo from '../dist/foo'`（需先执行构建）。
- 断言：使用 `throw new Error` 明确失败原因。
- 收尾：`import $exit from '../dist/exit'; $exit()`。
- 运行：`pnpm test foo` → 编译生成 `temp/foo.test.ahk` 后启动。

## 新增函数示例

1. `src/sum.coffee`：
   ```coffeescript
   # @ts-check
   ###* @type import('./sum').Sum ###
   export default (args...) ->
     $total = 0
     for $x in args
       $total = $total + $x
     return $total
   ```
2. `src/sum.d.ts`：声明类型 + module。
3. 可选：`src/sum.test.coffee` 编写测试。
4. 执行：`pnpm build` → `pnpm test sum`。

## 任务系统

- `task/index.ts` 支持 `<group>@<name>` 形式，会转换为路径；当前任务基本是扁平的：`build` / `watch` / `test` / `update`。
- 推荐用现有 npm scripts 调用：`pnpm build` / `pnpm watch` / `pnpm test <name>`。

## 外部依赖

- `coffee-ahk`：CoffeeScript → AutoHotkey 编译器。
- `fire-keeper`：文件、glob、并发、执行等工具集合。
- `radash`：轻量工具库（例如防抖），在 `task` 中使用更频繁，`src` 中尽量保持纯净。

## 约定与禁忌

- 保持函数短小、纯同步逻辑，除非有既定异步模式（当前库以同步工具为主）。
- 所有可变局部变量加 `$` 前缀以便构建期替换隔离。
- 改变函数签名必须同步更新 `.d.ts`。
- 测试 / 脚本可以从 `dist/` 引入；核心源码禁止直接引用 `dist/`。
- 不要在 `src/*.coffee` 中放置全局副作用（如定时器、事件监听）。

## 快速命令

```shell
pnpm build        # 构建 dist（变量命名空间处理）
pnpm watch        # 监听 src + scripts 自动构建
pnpm test add     # 编译并运行 add.test.coffee
pnpm task update  # 运行维护类任务（如果存在）
```

## 修改流程建议

- 编辑后务必先 `pnpm build` 再跑对应测试。
- 每次只针对单个函数写独立测试：`pnpm test <name>`；不提供批量测试入口。

## 反馈 & 待明确

若需新增异步模式、错误处理统一策略或更复杂的组合工具，请先与维护者确认再扩展现有约定。
