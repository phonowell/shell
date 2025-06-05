export type Push = <T>(list: T[], ...value: T[]) => number

declare module './push' {
  /** Adds one or more elements to the end of an array and returns the new length of the array */
  const push: Push
  export default push
}
