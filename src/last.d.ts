export type Last = <T>(list: T[]) => T

declare module './last' {
  /** Returns the last element of a list */
  const last: Last
  export default last
}
