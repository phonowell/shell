export type FormatHotkey = (key: string) => string
export type FormatHotkey1 = (key: string) => string[]
export type FormatHotkey2 = (listKey: string[]) => [string, string[]]

declare module './formatHotkey' {
  /** Formats a hotkey string */
  const formatHotkey: FormatHotkey
  export default formatHotkey
}
