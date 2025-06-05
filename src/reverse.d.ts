export type Reverse = <T>(list: T[]) => T[]

declare module './reverse' {
  /** Reverses the order of elements in an array */
  const reverse: Reverse
  export default reverse
}
