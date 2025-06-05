export type Head = <T>(list: T[]) => T

declare module './head' {
  /** Returns the first element of a list */
  const head: Head
  export default head
}
