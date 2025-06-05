export type Compact = <T>(list: T[]) => T[]

declare module './compact' {
  /** Creates a new array with all falsey values removed */
  const compact: Compact
  export default compact
}
