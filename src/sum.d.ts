export type Sum = (list: number[]) => number

declare module './sum' {
  /** Computes the sum of the values in array */
  const sum: Sum
  export default sum
}
