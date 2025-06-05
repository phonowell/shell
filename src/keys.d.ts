export type Keys = (ipt: Record<string, unknown>) => string[]

declare module './keys' {
  /** Returns the keys of an object */
  const keys: Keys
  export default keys
}
