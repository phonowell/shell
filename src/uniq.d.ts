export type Uniq = (list: string[]) => string[]

declare module './uniq' {
  /** Creates a duplicate-free version of an array */
  const uniq: Uniq
  export default uniq
}
