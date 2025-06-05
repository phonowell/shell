export type Each = <T>(
  list: T[],
  callback: (item: T, i: number) => unknown,
) => void

declare module './each' {
  /** Iterates over each item in the list, executing the callback */
  const each: Each
  export default each
}
