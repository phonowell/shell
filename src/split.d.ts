export type Split = (ipt: string, delimiter: string) => string[]

declare module './split' {
  /** Splits a string into an array of substrings */
  const split: Split
  export default split
}
