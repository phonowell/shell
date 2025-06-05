export type Trim = (ipt: string, omitting?: string) => string

declare module './trim' {
  /** Trims whitespace or specified characters from the start and end of a string */
  const trim: Trim
  export default trim
}
