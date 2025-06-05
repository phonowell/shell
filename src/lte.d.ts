export type Lte = <T = number>(value: T, other: T) => boolean

declare module './lte' {
  /** Checks if value is less than or equal to other */
  const lte: Lte
  export default lte
}
