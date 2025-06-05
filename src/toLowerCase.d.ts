export type ToLowerCase = (ipt: string) => string

declare module './toLowerCase' {
  /** Converts string to lower case */
  const toLowerCase: ToLowerCase
  export default toLowerCase
}
