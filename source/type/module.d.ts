import { EmitterShell } from './emitterShell'
import { FileShell } from './fileShell'
import { MathShell } from './mathShell'
import { WindowShell } from './windowShell'

// toolkit start

type Fn = (...args: unknown[]) => unknown
type Point = [number, number]

export type Abs = (n: number) => number
export type Add = (...args: number[]) => number
export type Alert = (message: string) => void
export type Beep = () => void
export type Bind = (callback: Fn, ...args: unknown[]) => Fn
export type BlockInput = (isBlocked: boolean) => void
export type Ceil = (n: number) => number
export type Chunk = <T>(list: T[], size?: number) => T[][]
export type ClearInterval = (callback: Fn) => void
export type ClearTimeout = (callback: Fn) => void
export type Click = (key?: string) => void
export type Clone = <T extends unknown[] | object>(ipt: T) => T
export type Compact = <T>(list: T[]) => T[]
export type Concat = <T>(list: T[], ...values: (T | T[])[]) => T[]

export type Confirm = (
  text: string,
  callback: (result: boolean) => unknown,
) => void

export type CreateList = <
  T extends 'boolean' | 'number' | 'string' | 'unknown' = 'unknown',
>(
  type?: T,
) => T extends 'boolean'
  ? boolean[]
  : T extends 'number'
  ? number[]
  : T extends 'string'
  ? string[]
  : unknown[]

export type Debounce = (func: Fn, wait: number) => Fn
export type Defer = (func: Fn, ...args: unknown[]) => Fn
export type Delay = (func: Fn, wait: number, ...args: unknown[]) => Fn

export type Delete = <T extends object>(
  object: T,
  ...keys: (string | number)[]
) => void

export type Drop = <T>(list: T[], n?: number) => T[]

export type Each = <T>(
  list: T[],
  callback: (item: T, i: number) => unknown,
) => void

export type Echo = <T extends string>(message: T) => T
export type Emitter = () => EmitterShell
export type Eq = (value: unknown, other: unknown) => boolean

export type Exec = (
  cmd: string | string[],
  callback?: (code: number | string) => void,
) => void

export type Exit = () => void
export type File = (source: string) => FileShell

export type Filter = <T>(
  list: T[],
  callback: (item: T, i: number) => boolean,
) => T[]

export type FindColor = (
  color: number,
  start?: Point,
  end?: Point,
  variation?: number,
) => Point

export type FindImage = (source: string, start?: Point, end?: Point) => Point
export type First = <T>(list: T[]) => T
export type Floor = (n: number) => number
export type ForEach = Each
export type FormatHotkey1 = (key: string) => string[]
export type FormatHotkey2 = (listKey: string[]) => [string, string[]]
export type FormatHotkey = (key: string) => string
export type GetColor = (point: Point | undefined) => number
export type GetPosition = () => Point
export type HttpGet = (url: string, callback: (data: string) => unknown) => void
export type IsKeyBound = (key: string) => boolean
export type IsKeyPreventedDefault = (key: string) => boolean
export type IsPressing = (key: string) => boolean

export type GetType = (
  ipt: unknown,
) => 'array' | 'function' | 'number' | 'object' | 'string'

export type Gt = <T = number>(value: T, other: T) => boolean
export type Gte = <T = number>(value: T, other: T) => boolean
export type Head = First
export type Includes = (ipt: string | unknown[], needle: unknown) => boolean
export type IsArray = (ipt: unknown) => ipt is unknown[]
export type IsFunction = (ipt: unknown) => ipt is Fn
export type IsNumber = (ipt: unknown) => ipt is number
export type IsObject = (ipt: unknown) => ipt is object
export type IsString = (ipt: unknown) => ipt is string

export type Join = (
  list: (string | number | boolean)[],
  seperator?: string,
) => string

export type Keys = (ipt: Record<string, unknown>) => string[]
export type Last = <T>(list: T[]) => T
export type Length = (ipt: string | unknown[] | object) => number
export type Lt = <T = number>(value: T, other: T) => boolean
export type Lte = <T = number>(value: T, other: T) => boolean

export type Map = <T, R>(list: T[], callback: (item: T, i?: number) => R) => R[]
export type Math = MathShell
export type Max = (list: number[]) => number
export type Min = (list: number[]) => number
export type Mixin = (...args: object[]) => object
export type Mod = (dividend: number, divisor: number) => number
export type Move = (p: Point | undefined, speed?: number) => void
export type Noop = (...args: unknown[]) => void
export type Now = () => number
export type Nth = <T>(list: T[], n?: number) => T
export type Off = (key: string) => void
export type Once = (callback: Fn) => Fn
export type On = (key: string, callback: Fn) => void
export type Open = (source: string) => void
export type Play = (filename: string) => void
export type Pop = <T>(list: T[]) => T
export type Press1 = (listInput: string[]) => string[]
export type Press2 = (listInput: string[]) => boolean
export type Press = (...key: string[]) => void
export type PreventDefaultKey = (key: string, isPrevented: boolean) => void
export type Push = <T>(list: T[], ...value: T[]) => number
export type Random = (min?: number, max?: number) => number
export type Range = (...args: number[]) => number[]
export type Reload = () => void

export type Replace = (
  ipt: string,
  searchment: string,
  replacement: string,
  limit?: number,
) => string

export type Reverse = <T>(list: T[]) => T[]
export type Round = (n: number) => number
export type SetFixed = (isFixed?: boolean | 'Toggle' | 'On' | 'Off') => void
export type SetInterval = (callback: Fn, time: number) => Fn
export type SetTimeout = (callback: Fn, time: number) => Fn
export type Shift = <T>(list: T[]) => T
export type Shuffle = (list: string[]) => string[]
export type Sleep = (time: number) => void
export type Slice = <T>(list: T[], start?: number, end?: number) => T[]
export type Sort = (list: string[]) => string[]
export type Split = (ipt: string, delimiter: string) => string[]
export type StartsWith = (text: string, string: string) => boolean
export type SubString = (text: string, iStart: number, iEnd?: number) => string
export type Sum = (list: number[]) => number
export type Suspend = (isSuspended?: boolean | 'Toggle' | 'On' | 'Off') => void
export type Tail = <T>(list: T[]) => T[]
export type Take = <T>(list: T[], count?: number) => T[]
export type Throttle = (func: Fn, wait: number) => Fn
export type Tip = <T extends string>(message: T, p: Point | undefined) => T
export type ToLower = ToLowerCase
export type ToLowerCase = (ipt: string) => string
export type ToNumber = (ipt: unknown) => number
export type ToString = (ipt: unknown) => string

export type ToTuple = <T extends unknown[]>(
  list: [...T],
) => {
  [K in keyof T]: T[K] extends boolean
    ? boolean
    : T[K] extends number
    ? number
    : T[K] extends string
    ? string
    : T[K] extends (...args: infer A) => infer R
    ? (...args: A) => R
    : never
}

export type ToUpper = ToUpperCase
export type ToUpperCase = (ipt: string) => string
export type Trim = (ipt: string, omitting?: string) => string
export type TrimEnd = (ipt: string, omitting?: string) => string
export type TrimStart = (ipt: string, omitting?: string) => string
export type Uniq = (list: string[]) => string[]
export type Unshift = <T>(list: T[], ...value: T[]) => number
export type Values = <T>(ipt: { [x: string]: T }) => T[]
export type Window = (source: string) => WindowShell
