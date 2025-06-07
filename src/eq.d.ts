export type Eq = (a: unknown, b: unknown) => boolean

declare module './eq' {
  /** Performs a deep comparison between two values to determine if they are equivalent */
  const eq: Eq
  export default eq
}
