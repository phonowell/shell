export type Map<T = unknown, R = unknown> = (
  list: T[],
  callback: (item: T, i?: number) => R,
) => R[]

declare module './map' {
  /** Creates a new array with the results of calling a provided function on every element */
  const map: Map
  export default map
}
