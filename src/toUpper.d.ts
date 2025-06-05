export type ToUpper = (ipt: string) => string

declare module './toUpper' {
  /** Converts string to upper case */
  const toUpper: ToUpper
  export default toUpper
}
