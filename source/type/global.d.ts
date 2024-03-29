import { Fn } from './module'

type StrReplace = (
  text: string,
  target: string,
  replace: string,
  limit?: number,
) => string

declare global {
  interface Array<T> {
    InsertAt: <T>(index: number, ...value: T[]) => T[]
    Pop: <T>() => T
    Push: <T>(...items: T[]) => void
    RemoveAt: <T>(index: number, count?: number) => T | T[] | number
  }
  interface Function {
    Name: string
    Bind: (...args: unknown[]) => (...args: unknown[]) => unknown
  }
  interface Object {
    Count: () => number
    Delete: (key: string | number) => void
    Length: () => number
  }

  const A_IsAdmin: boolean
  const A_ScreenHeight: number
  const A_ScreenWidth: number
  const A_TickCount: number
  const Abs: (n: number) => number
  const Ceil: (n: number) => number
  const ErrorLevel: number | string
  const ExitApp: () => void
  const FileExist: (source: string) => boolean
  const Floor: (n: number) => number
  const GetKeyState: (key: string, mode: 'P') => boolean
  const InStr: (text: string, target: string) => number
  const IsFunc: (ipt: unknown) => ipt is Fn
  const IsObject: (ipt: unknown) => ipt is object
  const LTrim: (text: string, omit?: string) => string
  const Max: (...numbers: number[]) => number
  const Min: (...numbers: number[]) => number
  const Mod: (dividend: number, divisor: number) => number
  const Native: (line: string) => unknown
  const RTrim: (text: string, omit?: string) => string
  const Reload: () => void
  const Round: (n: number) => number
  const SoundBeep: () => void
  const StrLen: (text: string) => number
  const StrReplace: StrReplace
  const StrSplit: (text: string, delimiter: string) => string[]
  const SubStr: (text: string, start: number, end?: number) => string
  const Trim: (text: string, omit?: string) => string
  const WinActive: (target: string) => boolean
  const WinExist: (target: string) => boolean

  const ComObjCreate: (target: string) => {
    Open: Fn
    ResponseText: string
    Send: Fn
    WaitForResponse: Fn
  }
}

export {}
