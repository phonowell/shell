export type Random = (min?: number, max?: number) => number

declare module './random' {
  /** Generates a random number */
  const random: Random
  export default random
}
