export type ToLower = (ipt: string) => string

declare module './toLower' {
  /** Converts string to lower case */
  const toLower: ToLower
  export default toLower
}
