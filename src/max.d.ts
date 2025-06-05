export type Max = (list: number[]) => number

declare module './max' {
  /** Returns the maximum value from a list of numbers */
  const max: Max
  export default max
}
