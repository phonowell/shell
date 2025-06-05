export type Concat = <T>(list: T[], ...values: (T | T[])[]) => T[]

declare module './concat' {
  /** Creates a new array concatenating the given arrays and/or values */
  const concat: Concat
  export default concat
}
