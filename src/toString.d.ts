export type ToString = (ipt: unknown) => string

declare module './toString' {
  /** Converts any value to a string representation */
  const toString: ToString
  export default toString
}
