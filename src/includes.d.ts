export type Includes = (ipt: string | unknown[], needle: unknown) => boolean

declare module './includes' {
  /** Checks if a value is in the list or string */
  const includes: Includes
  export default includes
}
