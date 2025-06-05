export type ForEach = <T>(
  list: T[],
  callback: (item: T, i: number) => unknown,
) => void

declare module './forEach' {
  /** Iterates over each item in the list, executing the callback */
  const forEach: ForEach
  export default forEach
}
