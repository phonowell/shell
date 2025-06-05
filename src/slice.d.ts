export type Slice<T> = (list: T[], start?: number, end?: number) => T[]

declare module './slice' {
  /** Returns a shallow copy of a portion of an array */
  const slice: Slice
  export default slice
}
