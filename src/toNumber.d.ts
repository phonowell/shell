export type ToNumber = (ipt: unknown) => number

declare module './toNumber' {
  /** Converts value to a number */
  const toNumber: ToNumber
  export default toNumber
}
