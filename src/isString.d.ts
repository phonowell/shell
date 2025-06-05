export type IsString = (ipt: unknown) => ipt is string

declare module './isString' {
  /** Checks if the input is a string. */
  const isString: IsString
  export default isString
}
