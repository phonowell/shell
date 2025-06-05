export type IsObject = (ipt: unknown) => ipt is object

declare module './isObject' {
  /** Checks if the input is an object. */
  const isObject: IsObject
  export default isObject
}
