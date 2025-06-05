export type Range = (...args: number[]) => number[]

declare module './range' {
  /** Creates an array of numbers progressing from start up to, but not including, end */
  const range: Range
  export default range
}
