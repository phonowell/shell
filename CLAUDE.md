# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

> **元原则**：中文文档 · 300行限制 · AI友好优先 · 节省Tokens · 并行工具调用 · 代码优先于文档 · **人工要求的信息不可轻易移除** · **对话中发现的重要信息主动记录到本文件**

**Meta Principles**: Code-first over documentation · Concurrency preferred (parallel tool calls) · User-requested information should not be removed lightly

## Project Overview

shell-ahk is a Lodash/jQuery-inspired utility library for AutoHotkey (AHK), written in CoffeeScript and compiled via `coffee-ahk`. It provides a rich set of functional utilities (map, filter, chunk, etc.) and AHK-specific helpers (click, keyBinding, alert, etc.).

## Build System Architecture

The build process (`pnpm build` → `task/build.ts`) executes these steps:

1. **Clean**: Remove entire `dist/` directory
2. **Transform**: Replace all `$variableName` → `<filename>_variableName` using regex `/\$([\w\d]+)/`
3. **Copy**: Copy all `.d.ts` type declarations from `src/` to `dist/`

**Critical**: This namespace isolation prevents AHK global variable collisions. Never manually write `<basename>_variable` syntax - always use `$variable` in source and let the build transform it.

### Namespace Isolation Pattern

```coffeescript
# src/add.coffee
export default (args...) ->
  $result = 0  # becomes add_result in dist/add.coffee
  for $arg in args
    $result = $result + $arg
  return $result
```

### Build & Watch Flow

- **Build**: `pnpm build` cleans `dist/`, rewrites `$` prefixes, copies type files
- **Watch**: `pnpm watch` monitors `src/` for auto-rebuild AND compiles `scripts/*.coffee` → `.ahk` with `salt: 'z'`

## Type System

Each function requires a paired `.d.ts` file using this exact pattern:

```typescript
// src/add.d.ts
export type Add = (...args: number[]) => number;

declare module "./add" {
  const add: Add;
  export default add;
}
```

In CoffeeScript files, reference the type with triple-comment JSDoc:

```coffeescript
# @ts-check
###* @type import('./add').Add ###
export default (args...) ->
  # implementation
```

**Required structure for every function**:

1. First line: `# @ts-check`
2. Second line: Triple-comment JSDoc type reference
3. Single default export (no named exports)
4. Matching `.d.ts` file with `export type` and `declare module`

## Development Commands

```bash
pnpm build              # Build dist/ with namespace isolation
pnpm watch              # Auto-rebuild src/ + compile scripts/*.coffee
pnpm test <name>        # Compile src/<name>.test.coffee and run it
pnpm lint               # ESLint on TypeScript files
pnpm task <taskName>    # Run custom tasks from task/
```

## Testing Structure

Tests compile to AHK via `coffee-ahk`, output to `temp/`, then execute directly:

```coffeescript
# src/add.test.coffee
import '../scripts/head.ahk'     # MUST be first: AHK runtime directives
import $add from '../dist/add'   # Import from dist/, NOT src/

# Test cases using throw for assertions
result = $add 1, 2, 3
unless result == 6
  throw new Error "Multi-param addition failed: #{result}"

result = $add()
unless result == 0
  throw new Error "No params failed: #{result}"

# MUST exit explicitly
import $exit from '../dist/exit'
$exit()
```

**Test execution flow**:

1. `pnpm test add` → calls `task/test.ts`
2. Compiles `src/add.test.coffee` → `temp/add.test.ahk` (with `salt: 'shell'`)
3. Executes `start ./temp/add.test.ahk` via AutoHotkey

**Critical constraints**:

- Always `pnpm build` BEFORE testing (tests import from `dist/`)
- First line MUST import `../scripts/head.ahk` for runtime config
- Use `throw new Error` for explicit failure messages
- Must call `$exit()` at end to terminate AHK process
- Test one function at a time: `pnpm test <name>` (no batch testing)

## Source Code Conventions

1. **One function per file**: Each `.coffee` file exports exactly ONE default export (no named exports)
2. **Variable prefixing**: ALL mutable local variables MUST use `$` prefix for namespace isolation
   - Correct: `$result = 0`, `$index = 1`, `$total = 0`
   - Wrong: `result = 0` (will pollute AHK global scope)
   - Never manually write `<basename>_variable` - let build handle transformation
3. **Type annotations**:
   - Line 1: `# @ts-check`
   - Line 2: `###* @type import('./functionName').TypeName ###`
4. **Pure functions**: Keep functions synchronous and side-effect-free
   - No global side effects (timers, event listeners, global mutations)
   - Current library focuses on synchronous utilities
   - Only deviate if there's an established async pattern
5. **Paired types**: Every `.coffee` requires matching `.d.ts` with IDENTICAL basename
6. **Import rules**:
   - `src/*.coffee` files: NEVER import from `dist/` (only from other `src/` or external)
   - `*.test.coffee` and `scripts/`: CAN import from `dist/`

## Task System

Tasks live in `task/*.ts` and are invoked via `pnpm task <name>`:

- `build`: Clean `dist/`, transform `$variables`, copy `.d.ts` files
- `test`: Compile test file, move to `temp/`, execute via AHK
- `watch`: Monitor `src/` for auto-build + compile `scripts/*.coffee` on change
- `update`: Maintenance tasks

Task runner supports `<group>@<name>` syntax (converts to `task/<name>/<group>.ts`).

## Function Categories

The library provides utilities across several domains:

- **Array operations**: map, filter, chunk, compact, concat, drop, take, first, last, slice, etc.
- **Object utilities**: keys, clone, mixin, delete, etc.
- **String manipulation**: split, join, replace, substring, startsWith, endsWith, etc.
- **Type checking**: isArray, isObject, isNumber, isString, isFunction, getType
- **Comparisons**: eq, gt, gte, lt, lte
- **AHK interactions**: click, press, move, alert, confirm, beep, exec, open, etc.
- **Event system**: emitter, on, off, once
- **File operations**: file utilities via fileShell
- **Key binding**: keyBinding, formatHotkey, isPressing, preventDefaultKey
- **Timing**: delay, sleep, setTimeout, setInterval, defer
- **Visual**: findColor, findImage, getColor, getPosition

## Dependencies

- **coffee-ahk**: CoffeeScript-to-AHK transpiler (core build tool)
  - 源码位置: `../coffee-ahk`
  - 使用文档: `../coffee-ahk/usage.md` — CoffeeScript → AHK 语法指南，包含：
    - AHK v1 特性（大小写不敏感、数组索引从1开始）
    - 禁止语法列表（可选链、范围操作符、后置if、async/await等）
    - 支持的语法参考（变量、函数、类、模块、循环、异常处理等）
    - 已知限制与解决方案（for循环解构、嵌套解构、Class与Export冲突）
- **fire-keeper**: File I/O, glob, concurrent execution, prompts (used extensively in `task/`)
- **radash**: Lightweight utility library (debounce, etc.)
  - **Important**: Use freely in `task/` scripts, but AVOID in `src/` to keep library pure
- **TypeScript tooling**: ESLint, Prettier, tsx (for task runner and linting)

## Adding a New Function

Complete workflow example for creating `sum`:

1. **Create `src/sum.coffee`**:

   ```coffeescript
   # @ts-check
   ###* @type import('./sum').Sum ###
   export default (args...) ->
     $total = 0
     for $x in args
       $total = $total + $x
     return $total
   ```

2. **Create `src/sum.d.ts`**:

   ```typescript
   export type Sum = (...args: number[]) => number;

   declare module "./sum" {
     const sum: Sum;
     export default sum;
   }
   ```

3. **Create `src/sum.test.coffee`** (optional):

   ```coffeescript
   import '../scripts/head.ahk'
   import $sum from '../dist/sum'

   result = $sum 1, 2, 3
   unless result == 6
     throw new Error "Expected 6, got #{result}"

   import $exit from '../dist/exit'
   $exit()
   ```

4. **Build and test**:
   ```bash
   pnpm build          # Transform $variables, output to dist/
   pnpm test sum       # Compile test.coffee → test.ahk, execute
   ```

**Key points**:

- All mutable variables need `$` prefix
- Build BEFORE testing (tests import from `dist/`)
- Keep functions short and focused
- When changing function signature, update BOTH `.coffee` AND `.d.ts`

## Scripts Directory

`scripts/` contains runtime AHK scripts and utilities:

- **`head.ahk`**: AutoHotkey runtime directives (imported as first line in all tests)
  - Sets `CoordMode`, `SendMode`, `SetKeyDelay`, etc.
  - Provides consistent execution environment
- **`*.coffee` files**: Watched and compiled to `.ahk` by `pnpm watch` (uses `salt: 'z'`)
  - Examples: `poh.coffee`, `er.coffee` (project-specific automation scripts)

## Critical Constraints & Rules

### Build & Test Workflow

- **NEVER edit `dist/` directly** - always modify `src/` and rebuild
- **ALWAYS `pnpm build` before `pnpm test`** - tests import from `dist/`, not `src/`
- **Test one function at a time** - no batch test runners supported
- Edit → Build → Test is the mandatory cycle

### Variable & Namespace Rules

- **ALL mutable local variables MUST have `$` prefix** in `src/*.coffee`
- **NEVER manually write `<basename>_variable`** - build transforms it automatically
- Regex pattern: `/\$([\w\d]+)/` → `<basename>_$1`

### Code Quality Rules

- **Keep functions short and focused** - one responsibility per function
- **Maintain pure, synchronous functions** - no global side effects
- **No timers/listeners in `src/`** - keep library utilities stateless
- **Update BOTH `.coffee` and `.d.ts`** when changing function signatures

### Import Rules

- **`src/*.coffee`**: CANNOT import from `dist/` (only `src/` or external packages)
- **`*.test.coffee`**: CAN import from `dist/` (required for testing)
- **`scripts/*.coffee`**: CAN import from `dist/`

### Dependency Rules

- **`radash` usage**: OK in `task/` scripts, AVOID in `src/` for library purity

## Modification Best Practices

1. **Before modifying**: Run `pnpm build` to ensure clean starting state
2. **After modifying**:
   - Run `pnpm build` immediately
   - Run `pnpm test <name>` for affected function
3. **For new features**: Consider if async pattern is truly needed (library is sync-focused)
4. **When uncertain**: Check existing functions for established patterns
