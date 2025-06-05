export type First = <T>(list: T[]) => T

declare module './first' {
  /** Returns the first element of a list */
  const first: First
  export default first
}
