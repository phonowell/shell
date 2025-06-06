export type Unshift = <T>(list: T[], ...values: T[]) => number

declare module './unshift' {
  /** Adds one or more elements to the beginning of an array */
  const unshift: Unshift
  export default unshift
}
