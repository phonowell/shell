export type Sort = (list: string[]) => string[]

declare module './sort' {
  /** Creates an array of elements, sorted in ascending order */
  const sort: Sort
  export default sort
}
