export type Length = (ipt: string | unknown[] | object) => number

declare module './length' {
  /** Returns the length of a string, array, or object */
  const length: Length
  export default length
}
