export type Gt = <T = number>(value: T, other: T) => boolean

declare module './gt' {
  /** Checks if value is greater than other */
  const gt: Gt
  export default gt
}
