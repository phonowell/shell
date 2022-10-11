type StrReplace = (
  text: string,
  target: string,
  replace: string,
  limit?: number,
) => string

declare global {
  interface Array<T> {
    Push: <T>(...items: T[]) => void
  }
  interface Function {
    Name: string
    Bind: (...args: unknown[]) => Function
  }
  interface Object {
    Count: () => number
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
  const InStr: (text: string, target: string) => number
  const IsFunc: (ipt: unknown) => ipt is Function
  const IsObject: (ipt: unknown) => ipt is object
  const LTrim: (text: string, omit?: string) => string
  const Native: (line: string) => unknown
  const RTrim: (text: string, omit?: string) => string
  const SoundBeep: () => void
  const StrLen: (text: string) => number
  const StrReplace: StrReplace
  const StrSplit: (text: string, delimiter: string) => string[]
  const SubStr: (text: string, start: number, end?: number) => string
  const Trim: (text: string, omit?: string) => string
}

export {}
