export type Min = (list: number[]) => number

declare module './min' {
  /** Returns the minimum value from a list of numbers */
  const min: Min
  export default min
}
