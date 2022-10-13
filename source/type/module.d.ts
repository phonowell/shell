import { EmitterShell } from './emitterShell'
import { FileShell } from './fileShell'
import { WindowShell } from './windowShell'

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
export type Emitter = () => EmitterShell
export type Eq = (value: unknown, other: unknown) => boolean
export type Exit = () => void
export type File = (source: string) => FileShell
export type FindImage = (source: string, start?: Point, end?: Point) => Point
export type First = <T>(list: T[]) => T
export type Floor = (n: number) => number
export type FormatHotkey = (key: string) => string
export type FormatHotkey2 = (key: string) => string[]
export type FormatHotkey3 = (listLey: string[]) => [string, string[]]
export type Get = (url: string, callback: (data: string) => unknown) => void
export type GetColor = (point: Point | undefined) => number
export type GetPosition = () => Point
export type GetState = (key: string) => string
export type Gt = <T = number>(value: T, other: T) => boolean
export type Gte = <T = number>(value: T, other: T) => boolean
export type Includes = (ipt: string | unknown[], needle: unknown) => boolean
export type IsArray = (ipt: unknown) => ipt is unknown[]
export type IsFunction = (ipt: unknown) => ipt is Fn
export type IsNumber = (ipt: unknown) => ipt is number
export type IsObject = (ipt: unknown) => ipt is Object
export type IsString = (ipt: unknown) => ipt is string
export type Keys = (ipt: Record<string, unknown>) => string[]
export type Last = <T>(list: T[]) => T
export type Length = (ipt: string | unknown[] | object) => number
export type Lt = <T = number>(value: T, other: T) => boolean
export type Lte = <T = number>(value: T, other: T) => boolean
export type Map = <T, R>(list: T[], callback: (item: T, i?: number) => R) => R[]
export type Mixin = (...args: object[]) => object
export type Mod = (dividend: number, divisor: number) => number
export type Move = (p: Point | undefined, speed?: number) => void
export type Noop = (...args: unknown[]) => void
export type Now = () => number
export type Nth = <T>(list: T[], n?: number) => T
export type Once = (callback: Fn) => Fn
export type Open = (source: string) => void
export type Play = (filename: string) => void
export type Pop = <T>(list: T[]) => T
export type Press = (...key: string[]) => void
export type Press2 = (listInput: string[]) => string[]
export type Press3 = (listInput: string[]) => boolean
export type Push = <T>(list: T[], ...value: T[]) => number
export type Random = (min?: number, max?: number) => number
export type Range = (...args: number[]) => number[]
export type Reload = () => void
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
export type Take = <T>(list: T[], count?: number) => T[]
export type Throttle = (time: number, callback: Fn) => Fn
export type Tip = <T extends string>(message: T, p: Point | undefined) => T
export type ToLowerCase = (ipt: string) => string
export type ToString = (ipt: unknown) => string
export type ToUpperCase = (ipt: string) => string
export type Trim = (ipt: string, omitting?: string) => string
export type TrimEnd = (ipt: string, omitting?: string) => string
export type TrimStart = (ipt: string, omitting?: string) => string
export type Uniq = (list: string[]) => string[]
export type Unshift = <T>(list: T[], ...value: T[]) => number
export type Values = <T>(ipt: { [x: string]: T }) => T[]
export type Window = (source: string) => WindowShell

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

export type FindColor = (
  color: number,
  start?: Point,
  end?: Point,
  variation?: number,
) => Point

export type GetType = (
  ipt: unknown,
) => 'array' | 'function' | 'number' | 'object' | 'string'

export type Join = (
  list: (string | number | boolean)[],
  seperator?: string,
) => string

export type Replace = (
  ipt: string,
  searchment: string,
  replacement: string,
  limit?: number,
) => string
