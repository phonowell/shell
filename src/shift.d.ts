export type Shift = <T>(list: T[]) => T

declare module './shift' {
  /** Removes and returns the first element from an array */
  const shift: Shift
  export default shift
}
