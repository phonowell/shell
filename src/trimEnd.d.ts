export type TrimEnd = (ipt: string, omitting?: string) => string

declare module './trimEnd' {
  /** Removes trailing whitespace or specified characters from string */
  const trimEnd: TrimEnd
  export default trimEnd
}
