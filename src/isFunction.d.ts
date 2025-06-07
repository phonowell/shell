export type IsFunction = (ipt: unknown) => ipt is Function

declare module './isFunction' {
  /** Checks if value is a function */
  const isFunction: IsFunction
  export default isFunction
}
