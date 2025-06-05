export type Tail = <T>(list: T[]) => T[]

declare module './tail' {
  /** Gets all but the first element of array */
  const tail: Tail
  export default tail
}
