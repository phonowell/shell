declare global {
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
  const RTrim: (text: string, omit?: string) => string
  const SoundBeep: () => void
  const StrSplit: (text: string, delimiter: string) => string[]
  const SubStr: (text: string, start: number, end?: number) => string
  const Trim: (text: string, omit?: string) => string
}

export {}
