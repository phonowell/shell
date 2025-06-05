export type Gte = <T = number>(value: T, other: T) => boolean

declare module './gte' {
  /** Checks if value is greater than or equal to other */
  const gte: Gte
  export default gte
}
