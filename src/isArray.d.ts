export type IsArray = (ipt: unknown) => ipt is unknown[]

declare module './isArray' {
  /** Checks if the input is an array. */
  const isArray: IsArray
  export default isArray
}
