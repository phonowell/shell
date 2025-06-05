export type Pop = <T>(list: T[]) => T

declare module './pop' {
  /** Removes and returns the last element from an array */
  const pop: Pop
  export default pop
}
