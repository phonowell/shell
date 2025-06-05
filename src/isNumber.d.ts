export type IsNumber = (ipt: unknown) => ipt is number

declare module './isNumber' {
  /** Checks if the input is a number */
  const isNumber: IsNumber
  export default isNumber
}
