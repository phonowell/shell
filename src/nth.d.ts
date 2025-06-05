export type Nth = <T>(list: T[], n?: number) => T

declare module './nth' {
  /** Returns the nth element of a list */
  const nth: Nth
  export default nth
}
