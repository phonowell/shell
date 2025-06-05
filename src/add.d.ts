export type Add = (...args: number[]) => number

declare module './add' {
  /** Takes any number of numeric arguments and returns their sum */
  const add: Add
  export default add
}
