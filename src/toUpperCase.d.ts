export type ToUpperCase = (ipt: string) => string

declare module './toUpperCase' {
  /** Converts string to upper case */
  const toUpperCase: ToUpperCase
  export default toUpperCase
}
