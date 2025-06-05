export type Filter = <T>(
  list: T[],
  callback: (item: T, i: number) => boolean,
) => T[]

declare module './filter' {
  /** Creates a new array with all elements that pass the test implemented by the provided function */
  const filter: Filter
  export default filter
}
