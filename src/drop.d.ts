export type Drop = <T>(list: T[], n?: number) => T[]

declare module './drop' {
  /** Creates a new array with the first `n` elements removed */
  const drop: Drop
  export default drop
}
