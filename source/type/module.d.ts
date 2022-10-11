type Fn = (...args: unknown[]) => unknown
type Point = [number, number]

export type Abs = (n: number) => number
export type Add = (...args: number[]) => number
export type Admin = () => void
export type Alert = (message: string) => void
export type Beep = () => void
export type Bind = (callback: Fn, ...args: unknown[]) => Fn
export type BlockInput = (block: boolean) => void
export type Ceil = (n: number) => number
export type Chunk = <T>(list: T[], n?: number) => T[][]
export type ClearInterval = (callback: Fn) => void
export type ClearTimeout = (callback: Fn) => void
export type Click = (key?: string) => void
export type Clone = <T = unknown[] | Object>(ipt: T) => T
export type Compact = <T>(list: T[]) => T[]
export type Concat = <T>(list: T[], ...value: (T | T[])[]) => T[]
export type Debounce = (time: number, callback: Fn) => Fn
export type Defer = (callback: Fn, ...args: unknown[]) => Fn
export type Delay = (callback: Fn, time: number, ...args: unknown[]) => Fn
export type Drop = <T>(list: T[], n?: number) => T[]
export type Echo = <T extends string>(message: T) => T
export type Eq = <T>(value: T, other: T) => boolean
export type Exit = () => void
export type GetPosition = () => Point
export type Includes = (ipt: string | unknown[], needle: unknown) => boolean
export type IsArray = (ipt: unknown) => ipt is unknown[]
export type IsFunction = (ipt: unknown) => ipt is Fn
export type IsNumber = (ipt: unknown) => ipt is number
export type IsObject = (ipt: unknown) => ipt is Object
export type IsString = (ipt: unknown) => ipt is string
export type Map = <T, R>(list: T[], callback: (item: T, i?: number) => R) => R[]
export type Mixin = (...args: object[]) => object
export type Mod = (dividend: number, divisor: number) => number
export type Noop = (...args: unknown[]) => void
export type Now = () => number
export type Random = (min?: number, max?: number) => number
export type SetTimeout = (callback: Fn, time: number) => Fn
export type Sleep = (time: number) => void
export type Slice = <T>(list: T[], start?: number, end?: number) => T[]
export type Slice2 = <T>(args: [T[], number?, number?]) => [T[], number, number]
export type Tip = <T extends string>(message: T, p?: Point) => T

export type Confirm = (
  text: string,
  callback: (result: boolean) => unknown,
) => void

export type Each = <T>(
  list: T[],
  callback: (item: T, i: number) => unknown,
) => void

export type Exec = (
  cmd: string | string[],
  callback?: (code: number | string) => void,
) => void

export type Filter = <T>(
  list: T[],
  callback: (item: T, i: number) => boolean,
) => T[]
