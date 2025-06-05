export type TrimStart = (ipt: string, omitting?: string) => string

declare module './trimStart' {
  /** Removes leading whitespace or specified characters from string */
  const trimStart: TrimStart
  export default trimStart
}
